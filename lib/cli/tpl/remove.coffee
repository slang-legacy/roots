Roots = require '../../../index'

###*
 * Simple wrapper for Roots.template.remove, emits data to the CLI.
 *
 * @param  {CLI} cli - CLI class instance for event emission
 * @param  {Object} args - arguments to be sent to the roots fn
 * @return {Promise}
###

module.exports = (cli, args) ->
  Roots.template.remove(args)
    .then(cli.emit.bind(cli, 'success'), cli.emit.bind(cli, 'err'))
