import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'
import Users from '@/components/Users'
import Status from '@/components/Status'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/users',
      name: 'Users',
      component: Users
    },
    {
      path: '/status',
      name: 'Status',
      component: Status
    }
  ]
})
