<script lang="ts">
  import { capitalizer } from '@utils/capitalizer';

  export let language: string;
  export let color: string;
</script>

<div>
  <span style="background-color: {color};" />
  {capitalizer(language)}
</div>

<style>
  div {
    color: #666;
    margin-top: 2px;
    margin-right: 16px;
  }
  span {
    top: 1.5px;
    width: 12px;
    height: 12px;
    border: 1px solid #ccc;
    display: inline-block;
    position: relative;
    border-radius: 50%;
  }
</style>
