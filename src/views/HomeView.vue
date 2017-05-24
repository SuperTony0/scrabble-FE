<template>
  <div>
    <button class="mdl-button mdl-js-button mdl-button--fab">
  <i class="material-icons">add</i>
</button>
    Find a word:
    <input v-model="word" > </input>
    <button @click='getWords(word)'> Submit</button>

    <div class="mdl-grid">
      <div>
        <word v-for="word in wordList" :key="word" :word-detail="word" class="mdl-cell mdl-cell--3-col"></word>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'
import Word from '../components/Word.vue'
export default {
  components: { Word },
  data() {
    return {
      word: '',
      wordList: ''
    }
  },
  methods: {
      getWords (word) {
          axios.get('/words/' + word)
            .then( (response) => {
              this.wordList = response.data.hits;
              console.log(response.data)
            })
      }
  }
}
</script>

<style scoped>
</style>
