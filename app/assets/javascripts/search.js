document.addEventListener("turbolinks:load", function() {
  $input = $("[data-behavior='autocomplete']")

  var options = {
    getValue: "name",
    url: function(phrase) {
      return "/search.json?q=" + phrase;
    },
    categories: [
      {
        listLocation: "ingredients",
        header: "<strong>Ingredients</strong>",
      },
      {
        listLocation: "recipes",
        header: "<strong>Recipes</strong>",
      },
      {
        listLocation: "categories",
        header: "<strong>Categories</strong>",
      }
    ],
    list: {
      onChooseEvent: function() {
        var url = $input.getSelectedItemData().url
        $input.val("")
        Turbolinks.visit(url)
      }
    }
  }

  $input.easyAutocomplete(options)
});
