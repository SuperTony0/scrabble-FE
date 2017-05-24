<template>
    <div >
        Word: {{wordDetail.word}} Scrabble Value: {{wordDetail.scrabblePoints}}
    </div>
</template>

<script>
export default {
    name: 'Word',
    props: ['wordDetail']
}
</script>

<style scoped>
    div {
        font-size: 25px;
    }
</style>

