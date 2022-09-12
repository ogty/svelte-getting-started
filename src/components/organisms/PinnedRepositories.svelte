<script lang="ts">
  import Spacer from '@atoms/Spacer.svelte';
  import RepositoryCard from '@molecules/RepositoryCard.svelte';
  import type { Visibility } from '@schemas/Visibility';

  interface Repositories {
    userName: string;
    repositoryName: string;
    visibility: Visibility;
    description: string;
    mostUsedLanguage: string;
    mostUsedLanguageColor: string;
    stars: number;
  }

  const repositories: Repositories[] = [
    {
      userName: 'ogty',
      repositoryName: 'astro-tailwindcss-template',
      visibility: 'public template',
      description: '🚀 × 💨 Astro and Tailwind CSS template repositories and useful tools.',
      mostUsedLanguage: 'shell',
      mostUsedLanguageColor: '#89E051',
      stars: 0,
    },
    {
      userName: 'ogty',
      repositoryName: 'tools-for-i18n',
      visibility: 'public',
      description:
        '🌐 Useful tools for internationalization support. Can convert from yaml files and create tables. Additional languages can also be automatically translated.',
      mostUsedLanguage: 'python',
      mostUsedLanguageColor: '#3572A5',
      stars: 1,
    },
  ];
</script>

{#each repositories as repository}
  <RepositoryCard {...repository} />
  <Spacer height="18px" />
{/each}
