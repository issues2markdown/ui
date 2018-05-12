<template>
  <div id="app">
    <div class="container">
      <div class="row">
        <div class="col-1">
          <div class="dropdown">
            <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <i class="far fa-caret-square-down"></i>
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
              <a class="dropdown-item" href="/"><i class="fas fa-home"></i> Home</a>
              <a class="dropdown-item" href="/about"><i class="fas fa-info-circle"></i> About</a>
            </div>
          </div>
        </div>
        <div class="col-11">
          <img src="./assets/logo.png">
        </div>
      </div>
    </div>
    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
#app {
  text-align: center;
  padding-top: 2em;
}
</style>
