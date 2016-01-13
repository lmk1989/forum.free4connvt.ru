
function WikiTextConverter() { }
WikiTextConverter._path = '/forums/dwr';

WikiTextConverter.getText = function(callback) {
    DWREngine._execute(WikiTextConverter._path, 'WikiTextConverter', 'getText', callback);
}

WikiTextConverter.execute = function(callback) {
    DWREngine._execute(WikiTextConverter._path, 'WikiTextConverter', 'execute', callback);
}

WikiTextConverter.setText = function(p0, callback) {
    DWREngine._execute(WikiTextConverter._path, 'WikiTextConverter', 'setText', p0, callback);
}

WikiTextConverter.getServletRequest = function(callback) {
    DWREngine._execute(WikiTextConverter._path, 'WikiTextConverter', 'getServletRequest', callback);
}

WikiTextConverter.setServletRequest = function(callback) {
    DWREngine._execute(WikiTextConverter._path, 'WikiTextConverter', 'setServletRequest', false, callback);
}

WikiTextConverter.convertFromPreviewToXhtml = function(p0, callback) {
    DWREngine._execute(WikiTextConverter._path, 'WikiTextConverter', 'convertFromPreviewToXhtml', p0, false, callback);
}

WikiTextConverter.convertFromWiki = function(p0, callback) {
    DWREngine._execute(WikiTextConverter._path, 'WikiTextConverter', 'convertFromWiki', p0, false, callback);
}

WikiTextConverter.convertToWiki = function(p0, callback) {
    DWREngine._execute(WikiTextConverter._path, 'WikiTextConverter', 'convertToWiki', p0, false, callback);
}

WikiTextConverter.convertToPreviewFromXhtml = function(p0, callback) {
    DWREngine._execute(WikiTextConverter._path, 'WikiTextConverter', 'convertToPreviewFromXhtml', p0, false, callback);
}

WikiTextConverter.convertToPreviewFromWiki = function(p0, callback) {
    DWREngine._execute(WikiTextConverter._path, 'WikiTextConverter', 'convertToPreviewFromWiki', p0, false, callback);
}

WikiTextConverter.getPreferredEditorMode = function(callback) {
    DWREngine._execute(WikiTextConverter._path, 'WikiTextConverter', 'getPreferredEditorMode', false, callback);
}

WikiTextConverter.setPreferredEditorMode = function(p0, callback) {
    DWREngine._execute(WikiTextConverter._path, 'WikiTextConverter', 'setPreferredEditorMode', p0, false, false, callback);
}
