<script lang="ts">
  import type { Visibility } from '@schemas/Visibility';
  import { capitalizer } from '@utils/capitalizer';

  export let visibility: Visibility;
</script>

<div>{capitalizer(visibility)}</div>

<style>
  div {
    color: #666;
    border: 1px solid #ccc;
    display: inline;
    padding: 0.12em 0.5em;
    font-size: 85%;
    font-weight: 500;
    line-height: 18px;
    border-radius: 2em;
  }
</style>
