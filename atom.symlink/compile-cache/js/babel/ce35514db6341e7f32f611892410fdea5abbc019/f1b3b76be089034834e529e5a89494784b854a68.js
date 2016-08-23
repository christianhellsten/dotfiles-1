Object.defineProperty(exports, '__esModule', {
  value: true
});

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { 'default': obj }; }

var _atom = require('atom');

var _fs = require('fs');

var _fs2 = _interopRequireDefault(_fs);

'use babel';

function ranges(coverageFile) {
  var data = undefined;
  var ranges = [];
  try {
    data = _fs2['default'].readFileSync(coverageFile, { encoding: 'utf8' });
  } catch (e) {
    return ranges;
  }

  // https://code.google.com/p/go/source/browse/cmd/cover/profile.go?repo=tools&name=a2a0f87c4b38&r=92b0a64343bc62160c1c10d335d375b0defa4c18#113
  var pattern = /^(.+):(\d+).(\d+),(\d+).(\d+) (\d+) (\d+)$/img;

  var extract = function extract(match) {
    if (!match) {
      return;
    }
    var filePath = match[1];
    // let statements = match[6]
    var count = match[7];
    var range = new _atom.Range([parseInt(match[2], 10) - 1, parseInt(match[3], 10) - 1], [parseInt(match[4], 10) - 1, parseInt(match[5], 10) - 1]);
    ranges.push({ range: range, count: parseInt(count, 10), file: filePath });
  };

  var match = undefined;
  while ((match = pattern.exec(data)) !== null) {
    extract(match);
  }

  return ranges;
}

exports['default'] = { ranges: ranges };
module.exports = exports['default'];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIi9Vc2Vycy9jaHJpc3RpYW4vLmRvdGZpbGVzL2F0b20uc3ltbGluay9wYWNrYWdlcy90ZXN0ZXItZ28vbGliL2dvY292ZXItcGFyc2VyLmpzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7OztvQkFFb0IsTUFBTTs7a0JBQ1gsSUFBSTs7OztBQUhuQixXQUFXLENBQUE7O0FBS1gsU0FBUyxNQUFNLENBQUUsWUFBWSxFQUFFO0FBQzdCLE1BQUksSUFBSSxZQUFBLENBQUE7QUFDUixNQUFJLE1BQU0sR0FBRyxFQUFFLENBQUE7QUFDZixNQUFJO0FBQ0YsUUFBSSxHQUFHLGdCQUFHLFlBQVksQ0FBQyxZQUFZLEVBQUUsRUFBQyxRQUFRLEVBQUUsTUFBTSxFQUFDLENBQUMsQ0FBQTtHQUN6RCxDQUFDLE9BQU8sQ0FBQyxFQUFFO0FBQ1YsV0FBTyxNQUFNLENBQUE7R0FDZDs7O0FBR0QsTUFBSSxPQUFPLEdBQUcsK0NBQStDLENBQUE7O0FBRTdELE1BQUksT0FBTyxHQUFHLFNBQVYsT0FBTyxDQUFJLEtBQUssRUFBSztBQUN2QixRQUFJLENBQUMsS0FBSyxFQUFFO0FBQ1YsYUFBTTtLQUNQO0FBQ0QsUUFBSSxRQUFRLEdBQUcsS0FBSyxDQUFDLENBQUMsQ0FBQyxDQUFBOztBQUV2QixRQUFJLEtBQUssR0FBRyxLQUFLLENBQUMsQ0FBQyxDQUFDLENBQUE7QUFDcEIsUUFBSSxLQUFLLEdBQUcsZ0JBQVUsQ0FBQyxRQUFRLENBQUMsS0FBSyxDQUFDLENBQUMsQ0FBQyxFQUFFLEVBQUUsQ0FBQyxHQUFHLENBQUMsRUFBRSxRQUFRLENBQUMsS0FBSyxDQUFDLENBQUMsQ0FBQyxFQUFFLEVBQUUsQ0FBQyxHQUFHLENBQUMsQ0FBQyxFQUFFLENBQUMsUUFBUSxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsRUFBRSxFQUFFLENBQUMsR0FBRyxDQUFDLEVBQUUsUUFBUSxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsRUFBRSxFQUFFLENBQUMsR0FBRyxDQUFDLENBQUMsQ0FBQyxDQUFBO0FBQ3pJLFVBQU0sQ0FBQyxJQUFJLENBQUMsRUFBQyxLQUFLLEVBQUUsS0FBSyxFQUFFLEtBQUssRUFBRSxRQUFRLENBQUMsS0FBSyxFQUFFLEVBQUUsQ0FBQyxFQUFFLElBQUksRUFBRSxRQUFRLEVBQUMsQ0FBQyxDQUFBO0dBQ3hFLENBQUE7O0FBRUQsTUFBSSxLQUFLLFlBQUEsQ0FBQTtBQUNULFNBQU8sQ0FBQyxLQUFLLEdBQUcsT0FBTyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQSxLQUFNLElBQUksRUFBRTtBQUM1QyxXQUFPLENBQUMsS0FBSyxDQUFDLENBQUE7R0FDZjs7QUFFRCxTQUFPLE1BQU0sQ0FBQTtDQUNkOztxQkFFYyxFQUFDLE1BQU0sRUFBTixNQUFNLEVBQUMiLCJmaWxlIjoiL1VzZXJzL2NocmlzdGlhbi8uZG90ZmlsZXMvYXRvbS5zeW1saW5rL3BhY2thZ2VzL3Rlc3Rlci1nby9saWIvZ29jb3Zlci1wYXJzZXIuanMiLCJzb3VyY2VzQ29udGVudCI6WyIndXNlIGJhYmVsJ1xuXG5pbXBvcnQge1JhbmdlfSBmcm9tICdhdG9tJ1xuaW1wb3J0IGZzIGZyb20gJ2ZzJ1xuXG5mdW5jdGlvbiByYW5nZXMgKGNvdmVyYWdlRmlsZSkge1xuICBsZXQgZGF0YVxuICBsZXQgcmFuZ2VzID0gW11cbiAgdHJ5IHtcbiAgICBkYXRhID0gZnMucmVhZEZpbGVTeW5jKGNvdmVyYWdlRmlsZSwge2VuY29kaW5nOiAndXRmOCd9KVxuICB9IGNhdGNoIChlKSB7XG4gICAgcmV0dXJuIHJhbmdlc1xuICB9XG5cbiAgLy8gaHR0cHM6Ly9jb2RlLmdvb2dsZS5jb20vcC9nby9zb3VyY2UvYnJvd3NlL2NtZC9jb3Zlci9wcm9maWxlLmdvP3JlcG89dG9vbHMmbmFtZT1hMmEwZjg3YzRiMzgmcj05MmIwYTY0MzQzYmM2MjE2MGMxYzEwZDMzNWQzNzViMGRlZmE0YzE4IzExM1xuICBsZXQgcGF0dGVybiA9IC9eKC4rKTooXFxkKykuKFxcZCspLChcXGQrKS4oXFxkKykgKFxcZCspIChcXGQrKSQvaW1nXG5cbiAgbGV0IGV4dHJhY3QgPSAobWF0Y2gpID0+IHtcbiAgICBpZiAoIW1hdGNoKSB7XG4gICAgICByZXR1cm5cbiAgICB9XG4gICAgbGV0IGZpbGVQYXRoID0gbWF0Y2hbMV1cbiAgICAvLyBsZXQgc3RhdGVtZW50cyA9IG1hdGNoWzZdXG4gICAgbGV0IGNvdW50ID0gbWF0Y2hbN11cbiAgICBsZXQgcmFuZ2UgPSBuZXcgUmFuZ2UoW3BhcnNlSW50KG1hdGNoWzJdLCAxMCkgLSAxLCBwYXJzZUludChtYXRjaFszXSwgMTApIC0gMV0sIFtwYXJzZUludChtYXRjaFs0XSwgMTApIC0gMSwgcGFyc2VJbnQobWF0Y2hbNV0sIDEwKSAtIDFdKVxuICAgIHJhbmdlcy5wdXNoKHtyYW5nZTogcmFuZ2UsIGNvdW50OiBwYXJzZUludChjb3VudCwgMTApLCBmaWxlOiBmaWxlUGF0aH0pXG4gIH1cblxuICBsZXQgbWF0Y2hcbiAgd2hpbGUgKChtYXRjaCA9IHBhdHRlcm4uZXhlYyhkYXRhKSkgIT09IG51bGwpIHtcbiAgICBleHRyYWN0KG1hdGNoKVxuICB9XG5cbiAgcmV0dXJuIHJhbmdlc1xufVxuXG5leHBvcnQgZGVmYXVsdCB7cmFuZ2VzfVxuIl19
//# sourceURL=/Users/christian/.dotfiles/atom.symlink/packages/tester-go/lib/gocover-parser.js
