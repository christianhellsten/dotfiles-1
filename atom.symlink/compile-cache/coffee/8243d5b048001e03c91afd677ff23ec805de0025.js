(function() {
  describe('BottomPanel', function() {
    var BottomPanel, bottomPanel, getMessage, linter;
    BottomPanel = require('../../lib/ui/bottom-panel');
    linter = null;
    bottomPanel = null;
    beforeEach(function() {
      return waitsForPromise(function() {
        return atom.packages.activatePackage('linter').then(function() {
          linter = atom.packages.getActivePackage('linter').mainModule.instance;
          if (bottomPanel != null) {
            bottomPanel.dispose();
          }
          bottomPanel = new BottomPanel('File');
          return atom.workspace.open(__dirname + '/fixtures/file.txt');
        });
      });
    });
    getMessage = require('../common').getMessage;
    it('is not visible when there are no errors', function() {
      return expect(linter.views.bottomPanel.getVisibility()).toBe(false);
    });
    it('hides on config change', function() {
      linter.views.bottomPanel.scope = 'Project';
      linter.views.bottomPanel.setMessages({
        added: [getMessage('Error')],
        removed: []
      });
      expect(linter.views.bottomPanel.getVisibility()).toBe(true);
      atom.config.set('linter.showErrorPanel', false);
      expect(linter.views.bottomPanel.getVisibility()).toBe(false);
      atom.config.set('linter.showErrorPanel', true);
      return expect(linter.views.bottomPanel.getVisibility()).toBe(true);
    });
    return describe('{set, remove}Messages', function() {
      return it('works as expected', function() {
        var messages;
        bottomPanel.scope = 'Project';
        messages = [getMessage('Error'), getMessage('Warning')];
        bottomPanel.setMessages({
          added: messages,
          removed: []
        });
        expect(bottomPanel.messagesElement.childNodes.length).toBe(1);
        expect(bottomPanel.messagesElement.childNodes[0].childNodes.length).toBe(2);
        bottomPanel.setMessages({
          added: [],
          removed: messages
        });
        expect(bottomPanel.messagesElement.childNodes.length).toBe(1);
        expect(bottomPanel.messagesElement.childNodes[0].childNodes.length).toBe(0);
        bottomPanel.setMessages({
          added: messages,
          removed: []
        });
        expect(bottomPanel.messagesElement.childNodes[0].childNodes.length).toBe(2);
        bottomPanel.removeMessages(messages);
        expect(bottomPanel.messagesElement.childNodes.length).toBe(1);
        return expect(bottomPanel.messagesElement.childNodes[0].childNodes.length).toBe(0);
      });
    });
  });

}).call(this);

//# sourceMappingURL=data:application/json;base64,ewogICJ2ZXJzaW9uIjogMywKICAiZmlsZSI6ICIiLAogICJzb3VyY2VSb290IjogIiIsCiAgInNvdXJjZXMiOiBbCiAgICAiL1VzZXJzL2NocmlzdGlhbi8uZG90ZmlsZXMvYXRvbS5zeW1saW5rL3BhY2thZ2VzL2xpbnRlci9zcGVjL3VpL2JvdHRvbS1wYW5lbC1zcGVjLmNvZmZlZSIKICBdLAogICJuYW1lcyI6IFtdLAogICJtYXBwaW5ncyI6ICJBQUFBO0FBQUEsRUFBQSxRQUFBLENBQVMsYUFBVCxFQUF3QixTQUFBLEdBQUE7QUFDdEIsUUFBQSw0Q0FBQTtBQUFBLElBQUEsV0FBQSxHQUFjLE9BQUEsQ0FBUSwyQkFBUixDQUFkLENBQUE7QUFBQSxJQUNBLE1BQUEsR0FBUyxJQURULENBQUE7QUFBQSxJQUVBLFdBQUEsR0FBYyxJQUZkLENBQUE7QUFBQSxJQUdBLFVBQUEsQ0FBVyxTQUFBLEdBQUE7YUFDVCxlQUFBLENBQWdCLFNBQUEsR0FBQTtlQUNkLElBQUksQ0FBQyxRQUFRLENBQUMsZUFBZCxDQUE4QixRQUE5QixDQUF1QyxDQUFDLElBQXhDLENBQTZDLFNBQUEsR0FBQTtBQUMzQyxVQUFBLE1BQUEsR0FBUyxJQUFJLENBQUMsUUFBUSxDQUFDLGdCQUFkLENBQStCLFFBQS9CLENBQXdDLENBQUMsVUFBVSxDQUFDLFFBQTdELENBQUE7O1lBQ0EsV0FBVyxDQUFFLE9BQWIsQ0FBQTtXQURBO0FBQUEsVUFFQSxXQUFBLEdBQWtCLElBQUEsV0FBQSxDQUFZLE1BQVosQ0FGbEIsQ0FBQTtpQkFHQSxJQUFJLENBQUMsU0FBUyxDQUFDLElBQWYsQ0FBb0IsU0FBQSxHQUFZLG9CQUFoQyxFQUoyQztRQUFBLENBQTdDLEVBRGM7TUFBQSxDQUFoQixFQURTO0lBQUEsQ0FBWCxDQUhBLENBQUE7QUFBQSxJQVdDLGFBQWMsT0FBQSxDQUFRLFdBQVIsRUFBZCxVQVhELENBQUE7QUFBQSxJQWFBLEVBQUEsQ0FBRyx5Q0FBSCxFQUE4QyxTQUFBLEdBQUE7YUFDNUMsTUFBQSxDQUFPLE1BQU0sQ0FBQyxLQUFL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

//# sourceURL=/Users/christian/.dotfiles/atom.symlink/packages/linter/spec/ui/bottom-panel-spec.coffee
