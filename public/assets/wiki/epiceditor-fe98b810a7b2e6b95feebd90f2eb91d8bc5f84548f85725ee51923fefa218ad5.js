var t = "### HEADER \
\n_italics_  \
\n **bold**  \
\n[link](http://www.google.com)!"

var opts = {
  container: 'epiceditor',
  clientSideStorage: false,
   file: {
    defaultContent: t,
    autoSave: 100
  },
  theme: {
    base: '/../../../assets/themes/base/epiceditor',
    editor: '/../../../assets/themes/editor/epic-light',
    preview: '/../../../assets/themes/preview/bartik'
  },
  button: {
    preview: true,
    fullscreen: true,
    bar: "auto"
  },
 shortcut: {
    modifier: 18,
    fullscreen: 70,
    preview: 80
  },
  string: {
    togglePreview: 'Toggle Preview Mode',
    toggleEdit: 'Toggle Edit Mode',
    toggleFullscreen: 'Enter Fullscreen'
  },

}
var editor = new EpicEditor(opts).load();

console.log("1 + 1 = /assets/themes/base/epiceditor-0262bc8ae8dc4a01f7cb2d2564965578c1d9c4e4308e370a16b0043804e38b8b.css")
;
