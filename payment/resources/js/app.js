import Alpine from 'alpinejs'
import * as _ from 'lodash'
import axios from 'axios'
import "@lottiefiles/lottie-player"

// Components script
//...

// Pages script
//...

window._ = _

/**
 * We'll load the axios HTTP library which allows us to easily issue requests
 * to our Laravel back-end. This library automatically handles sending the
 * CSRF token as a header based on the value of the "XSRF" token cookie.
 */

window.axios = axios;

window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';

/**
 * Start AlpineJS
 */
window.Alpine = Alpine

Alpine.start()
