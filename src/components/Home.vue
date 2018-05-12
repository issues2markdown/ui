<template>
  <div class="container home">
    <div class="row">
      <div class="col">
        <h1>Welcome to issues2markdown</h1>

        <section class="search">
          <div class="row">
            <div class="col">
              <h4>Query Issues:</h4>
              <div class="input-group">
                <input class="form-control border-secondary" type="search" placeholder="Query issues...">
                <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="button">
                        <i class="fa fa-search"></i>
                    </button>
                </div>
              </div>
            </div>
          </div>
        </section>

        <section class="results">
          <div class="row">
            <div class="col">
              <h4>Markdown Result:</h4>
              <pre><code class="markdown">{{ markdown }}</code></pre>
            </div>
          </div>
        </section>

      </div>
    </div>
  </div>
</template>

<script>
const markdownResult = `- [ ] org/repo : [Issue Title](https://github.com/org/repo/issues/1)
- [ ] org/repo : [Issue Title](https://github.com/org/repo/issues/1)
- [ ] org/repo : [Issue Title](https://github.com/org/repo/issues/1)
- [ ] org/repo : [Issue Title](https://github.com/org/repo/issues/1)
- [ ] org/repo : [Issue Title](https://github.com/org/repo/issues/1)
- [ ] org/repo : [Issue Title](https://github.com/org/repo/issues/1)`

export default {
  name: 'Home',
  data () {
    return {
      markdown: markdownResult,
      query: ''
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

</style>
