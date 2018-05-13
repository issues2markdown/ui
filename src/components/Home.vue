<template>
  <div class="container home">
    <div class="row">
      <div class="col">
        <h1>Welcome to issues2markdown</h1>

        <section class="query-form text-left mb-4">
          <div class="row">
            <div class="col">
              <h4>Query Issues:</h4>
              <form id="queryForm" v-on:submit.prevent="queryForm()" action="https://localhost:8081/" method="GET">
                <div class="input-group">
                  <input name="q" id="q" type="search" v-model="query" class="form-control border-secondary" placeholder="Query issues...">
                  <div class="input-group-append">
                      <button class="btn btn-outline-secondary">
                          <i class="fa fa-search"></i>
                      </button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </section>

        <section class="query-results text-left mb-4">
          <div class="row">
            <div class="col">
              <h4>Markdown Result:</h4>
              <pre v-highlightjs="markdown" class="form-control border-secondary"><code class="markdown"></code></pre>
            </div>
          </div>
        </section>

      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export const HTTP = axios.create({
  baseURL: `http://localhost:8081/`,
  headers: {
    Authorization: 'Bearer 7d60ff74c2693a6d01028f7b060d7601bb87dc88'
  }
})

export default {
  name: 'Home',
  data () {
    return {
      query: 'type:issue org:repejota state:open state:closed',
      markdown: ' ',
      errors: []
    }
  },
  methods: {
    queryForm (submitEvent) {
      HTTP.get(`/`, {
        params: {
          q: this.query
        }
      }).then(response => {
        this.markdown = response.data
      }).catch(e => {
        this.errors = e
        console.log(this.errors)
      })
    }
  }
}
</script>

<style scoped>
  pre {
    word-break: break-all;
    word-wrap: break-word;
    white-space: pre;
    white-space: -moz-pre-wrap;
    white-space: pre-wrap;
    white-space: pre\9;
    word-break: keep-all;
  }
  code {
    background: transparent;
  }
</style>
