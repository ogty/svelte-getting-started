<script lang="ts">
  import Eye from '@icons/Eye.svelte';
  import EyeSlash from '@icons/EyeSlash.svelte';
  import LabelBox from '@atoms/LabelBox.svelte';

  export let onInput: any;

  let isShow = false;
  const label = 'パスワード';
</script>

<LabelBox {label} />
<div class="box">
  <input type={isShow ? 'text' : 'password'} on:input={onInput} spellcheck="false" />
  <svelte:component
    this={isShow ? Eye : EyeSlash}
    size={18}
    on:click={() => {
      isShow = !isShow;
    }}
  />
</div>

<style>
  div {
    width: 360px;
    border: 0.5px solid #CCCCCC;
    display: flex;
    align-items: center;
    padding-left: 2px;
    border-radius: 1px;
    align-content: center;
    padding-right: 8px;
  }
  input {
    width: 100%;
    height: 32px;
    border: none;
    font-size: 16px;
    margin-right: 6px;
  }
  input:focus {
    outline: none;
  }
</style>
