<template>
  <div id="app">
    <div>
      <b-navbar toggleable="md" type="dark" variant="info">
        <b-navbar-toggle target="nav_collapse" />
        <b-navbar-brand href="#/">
          ServerManager
        </b-navbar-brand>
        <b-collapse is-nav id="nav_collapse">
          <b-navbar-nav>
            <b-nav-item href="#/users">
              Users
            </b-nav-item>
            <b-nav-item href="#/status">
              Status
            </b-nav-item>
          </b-navbar-nav>
          <b-navbar-nav class="ml-auto">
            <b-nav-item-dropdown right>
              <template slot="button-content">
                <em>User</em>
              </template>
              <b-dropdown-item href="#">
                Profile
              </b-dropdown-item>
              <b-dropdown-item href="#">
                Signout
              </b-dropdown-item>
            </b-nav-item-dropdown>
          </b-navbar-nav>
        </b-collapse>
      </b-navbar>
    </div>
    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>
