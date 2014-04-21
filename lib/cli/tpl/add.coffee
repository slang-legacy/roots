Roots = require '../../../index'

###*
 * Simple wrapper for Roots.template.add, emits data to the CLI.
 *
 * @param  {CLI} cli - CLI class instance for event emission
 * @param  {Object} args - arguments to be sent to the roots fn
 * @return {Promise}
###

module.exports = (cli, args) ->
  Roots.template.add(args)
    .then(cli.emit.bind(cli, 'success'), cli.emit.bind(cli, 'err'))
