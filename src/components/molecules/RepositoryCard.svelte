<script lang="ts">
  import Star from '@icons/Star.svelte';
  import Spacer from '@atoms/Spacer.svelte';
  import Repository from '@icons/Repository.svelte';
  import LanguageBadge from '@atoms/LanguageBadge.svelte';
  import VisibilityBadge from '@atoms/VisibilityBadge.svelte';
  import TargetBlankAnchor from '@atoms/TargetBlankAnchor.svelte';
  import type { Visibility } from '@schemas/Visibility';

  export let userName: string;
  export let repositoryName: string;
  export let visibility: Visibility;
  export let description: string;
  export let mostUsedLanguage: string;
  export let mostUsedLanguageColor: string;
  export let stars: number;

  const baseUrl = 'https://github.com/';
</script>

<div class="card">
  <div class="top">
    <Repository />
    <Spacer width="4px" />
    <TargetBlankAnchor href={`${baseUrl}/${userName}/${repositoryName}`} word={repositoryName} />
    <Spacer width="4px" />
    <VisibilityBadge {visibility} />
  </div>
  <p>{description}</p>
  <div class="bottom">
    <LanguageBadge language={mostUsedLanguage} color={mostUsedLanguageColor} />
    {#if stars}
      <Star size={14} />
      <Spacer width="4px" />
      <span class="stars">{stars}</span>
    {/if}
  </div>
</div>

<style>
  .card {
    width: 440px;
    height: fit-content;
    border: 1px solid #ccc;
    padding: 16px;
    border-radius: 6px;
  }
  .card .top {
    display: flex;
    font-size: 14px;
    align-items: center;
  }
  p {
    color: #666;
    font-size: 12px;
    margin-top: 8px;
  }
  .bottom {
    color: #666;
    display: flex;
    font-size: 12px;
    margin-top: 8px;
    align-items: center;
  }
  .stars {
    margin-top: 1px;
  }
</style>
