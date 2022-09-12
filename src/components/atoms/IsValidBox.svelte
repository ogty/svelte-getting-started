<script lang="ts">
  import XCircle from '@icons/XCircle.svelte';
  import CheckCircle from '@icons/CheckCircle.svelte';

  interface Requirements {
    message: string;
    pattern: RegExp;
  }

  export let value: string;
  export let requirements: Requirements[];
</script>

<ul>
  {#each requirements as { message, pattern }}
    <li>
      <span class="icon">
        <svelte:component this={pattern.test(value) ? CheckCircle : XCircle} />
      </span>
      <span>{message}</span>
    </li>
  {/each}
</ul>

<style>
  ul {
    padding-top: 12px;
    padding-left: 16px;
  }
  li {
    color: #333;
    display: flex;
    font-size: 14px;
    list-style: none;
    align-items: stretch;
  }
  li > span {
    display: flex;
    align-items: center;
  }
  .icon {
    margin-right: 6px;
  }
</style>
