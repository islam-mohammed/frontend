import { mount } from '@vue/test-utils'
import Logo from '@/components/Logo.vue'

it('Logo', () => {
  const wrapper = mount(Logo)
  expect(wrapper.vm).toBeTruthy()
})

