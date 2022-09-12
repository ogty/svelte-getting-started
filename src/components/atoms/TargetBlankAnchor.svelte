<script lang="ts">
  export let href: string;
  export let word: string;
</script>

<a {href} target="_blank" rel="noopener noreferrer">{word}</a>

<style>
  a {
    color: #0969da;
    font-weight: 600;
  }
  a:hover {
    text-decoration: underline;
  }
</style>
