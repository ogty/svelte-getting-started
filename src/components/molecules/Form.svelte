<script lang="ts">
  import IsValidBox from '@atoms/IsValidBox.svelte';
  import PasswordInputBox from '@atoms/PasswordInputBox.svelte';
  import Spacer from '@atoms/Spacer.svelte';

  let password = '';
  const onInput = (event: any) => {
    password = event.target.value;
  };

  const passwordRequirements = [
    {
      message: '8文字以上',
      pattern: /^.{8,}$/,
    },
    {
      message: 'アルファベットを含む',
      pattern: /^(?=.*[A-Za-z])/,
    },
    {
      message: '数字を含む',
      pattern: /^(?=.*\d)/,
    },
  ];
</script>

<PasswordInputBox {onInput} />
<IsValidBox bind:value={password} requirements={passwordRequirements} />
