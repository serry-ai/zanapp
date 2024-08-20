<?php

namespace ArchiElite\LogViewer\Concerns\LogIndex;

use ArchiElite\LogViewer\Facades\Cache;
use ArchiElite\LogViewer\LogIndexChunk;
use ArchiElite\LogViewer\Utils\GenerateCacheKey;
use Carbon\Carbon;
use Carbon\CarbonInterface;

trait CanCacheIndex
{
    public function clearCache(): void
    {
        foreach ($this->getAllCacheKeys() as $cacheKey) {
            Cache::forget($cacheKey);
        }

        $this->loadMetadata();
    }

    public function cacheSize(): int
    {
        return collect($this->getAllCacheKeys())
            ->sum(fn ($cacheKey) => strlen(serialize(Cache::get($cacheKey))));
    }

    protected function getAllCacheKeys(): array
    {
        $keys = [];

        foreach ($this->getChunkDefinitions() as $chunkDefinition) {
            $keys[] = $this->chunkCacheKey($chunkDefinition['index']);
        }

        $keys[] = $this->metaCacheKey();
        $keys[] = $this->cacheKey();

        return $keys;
    }

    protected function saveMetadataToCache(): void
    {
        Cache::put($this->metaCacheKey(), $this->getMetadata(), $this->cacheTtl());
    }

    protected function getMetadataFromCache(): array
    {
        return Cache::get($this->metaCacheKey(), []);
    }

    protected function saveChunkToCache(LogIndexChunk $chunk): void
    {
        $data = $chunk->data;

        if (extension_loaded('zlib')) {
            $data = gzcompress(serialize($data), 1);
        }

        Cache::put(
            $this->chunkCacheKey($chunk->index),
            $data,
            $this->cacheTtl()
        );
    }

    protected function getChunkDataFromCache(int $index, $default = null): ?array
    {
        $data = Cache::get($this->chunkCacheKey($index), $default);

        if (is_string($data) && extension_loaded('zlib')) {
            $data = unserialize(gzuncompress($data));
        }

        if ($data === false) {
            throw new \Exception('Cannot retrieve the index chunk. Please clear the cache.');
        }

        return $data;
    }

    protected function clearChunksFromCache(): void
    {
        foreach ($this->getChunkDefinitions() as $chunkDefinition) {
            Cache::forget($this->chunkCacheKey($chunkDefinition['index']));
        }
    }

    protected function cacheKey(): string
    {
        return GenerateCacheKey::for($this);
    }

    protected function metaCacheKey(): string
    {
        return GenerateCacheKey::for($this, 'metadata');
    }

    protected function chunkCacheKey(int $index): string
    {
        return GenerateCacheKey::for($this, "chunk:$index");
    }

    protected function cacheTtl(): CarbonInterface
    {
        if (! empty($this->query)) {
            return Carbon::now()->addDay();
        }

        return Carbon::now()->addWeek();
    }
}
