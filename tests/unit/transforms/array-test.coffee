`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'transform:array', 'ArrayTransform', {
  # Specify the other units that are required for this test.
  # needs: ['serializer:foo']
}

# Replace this with your real tests.
test 'it exists', ->
  transform = @subject()
  ok transform
