dynamic class caurina.transitions.properties.FilterShortcuts
{

    function FilterShortcuts()
    {
        trace("This is an static class and should not be instantiated.");
    }

    static function init()
    {
        caurina.transitions.Tweener.registerSpecialPropertySplitter("_filter", caurina.transitions.properties.FilterShortcuts._filter_splitter);
        caurina.transitions.Tweener.registerSpecialProperty("_Bevel_angle", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BevelFilter, "angle"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Bevel_blurX", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BevelFilter, "blurX"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Bevel_blurY", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BevelFilter, "blurY"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Bevel_distance", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BevelFilter, "distance"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Bevel_highlightAlpha", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BevelFilter, "highlightAlpha"]);
        caurina.transitions.Tweener.registerSpecialPropertySplitter("_Bevel_highlightColor", caurina.transitions.properties.FilterShortcuts._generic_color_splitter, ["_Bevel_highlightColor_r", "_Bevel_highlightColor_g", "_Bevel_highlightColor_b"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Bevel_highlightColor_r", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BevelFilter, "highlightColor", "color", "r"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Bevel_highlightColor_g", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BevelFilter, "highlightColor", "color", "g"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Bevel_highlightColor_b", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BevelFilter, "highlightColor", "color", "b"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Bevel_knockout", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BevelFilter, "knockout"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Bevel_quality", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BevelFilter, "quality"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Bevel_shadowAlpha", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BevelFilter, "shadowAlpha"]);
        caurina.transitions.Tweener.registerSpecialPropertySplitter("_Bevel_shadowColor", caurina.transitions.properties.FilterShortcuts._generic_color_splitter, ["_Bevel_shadowColor_r", "_Bevel_shadowColor_g", "_Bevel_shadowColor_b"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Bevel_shadowColor_r", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BevelFilter, "shadowColor", "color", "r"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Bevel_shadowColor_g", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BevelFilter, "shadowColor", "color", "g"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Bevel_shadowColor_b", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BevelFilter, "shadowColor", "color", "b"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Bevel_strength", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BevelFilter, "strength"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Bevel_type", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BevelFilter, "type"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Blur_blurX", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BlurFilter, "blurX"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Blur_blurY", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BlurFilter, "blurY"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Blur_quality", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.BlurFilter, "quality"]);
        caurina.transitions.Tweener.registerSpecialPropertySplitter("_ColorMatrix_matrix", caurina.transitions.properties.FilterShortcuts._generic_matrix_splitter, [[1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0], ["_ColorMatrix_matrix_rr", "_ColorMatrix_matrix_rg", "_ColorMatrix_matrix_rb", "_ColorMatrix_matrix_ra", "_ColorMatrix_matrix_ro", "_ColorMatrix_matrix_gr", "_ColorMatrix_matrix_gg", "_ColorMatrix_matrix_gb", "_ColorMatrix_matrix_ga", "_ColorMatrix_matrix_go", "_ColorMatrix_matrix_br", "_ColorMatrix_matrix_bg", "_ColorMatrix_matrix_bb", "_ColorMatrix_matrix_ba", "_ColorMatrix_matrix_bo", "_ColorMatrix_matrix_ar", "_ColorMatrix_matrix_ag", "_ColorMatrix_matrix_ab", "_ColorMatrix_matrix_aa", "_ColorMatrix_matrix_ao"]]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_rr", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 0]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_rg", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 1]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_rb", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 2]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_ra", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 3]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_ro", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 4]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_gr", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 5]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_gg", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 6]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_gb", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 7]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_ga", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 8]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_go", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 9]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_br", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 10]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_bg", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 11]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_bb", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 12]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_ba", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 13]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_bo", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 14]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_ar", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 15]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_ag", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 16]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_ab", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 17]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_aa", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 18]);
        caurina.transitions.Tweener.registerSpecialProperty("_ColorMatrix_matrix_ao", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ColorMatrixFilter, "matrix", "matrix", 19]);
        caurina.transitions.Tweener.registerSpecialProperty("_Convolution_alpha", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ConvolutionFilter, "alpha"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Convolution_bias", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ConvolutionFilter, "bias"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Convolution_clamp", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ConvolutionFilter, "clamp"]);
        caurina.transitions.Tweener.registerSpecialPropertySplitter("_Convolution_color", caurina.transitions.properties.FilterShortcuts._generic_color_splitter, ["_Convolution_color_r", "_Convolution_color_g", "_Convolution_color_b"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Convolution_color_r", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ConvolutionFilter, "color", "color", "r"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Convolution_color_g", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ConvolutionFilter, "color", "color", "g"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Convolution_color_b", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ConvolutionFilter, "color", "color", "b"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Convolution_divisor", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ConvolutionFilter, "divisor"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Convolution_matrixX", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ConvolutionFilter, "matrixX"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Convolution_matrixY", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ConvolutionFilter, "matrixY"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Convolution_preserveAlpha", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.ConvolutionFilter, "preserveAlpha"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DisplacementMap_alpha", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DisplacementMapFilter, "alpha"]);
        caurina.transitions.Tweener.registerSpecialPropertySplitter("_DisplacementMap_color", caurina.transitions.properties.FilterShortcuts._generic_color_splitter, ["_DisplacementMap_color_r", "_DisplacementMap_color_r", "_DisplacementMap_color_r"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DisplacementMap_color_r", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DisplacementMapFilter, "color", "color", "r"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DisplacementMap_color_g", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DisplacementMapFilter, "color", "color", "g"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DisplacementMap_color_b", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DisplacementMapFilter, "color", "color", "b"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DisplacementMap_componentX", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DisplacementMapFilter, "componentX"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DisplacementMap_componentY", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DisplacementMapFilter, "componentY"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DisplacementMap_mapBitmap", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DisplacementMapFilter, "mapBitmap"]);
        caurina.transitions.Tweener.registerSpecialPropertySplitter("_DisplacementMap_mapPoint", caurina.transitions.properties.FilterShortcuts._generic_point_splitter, ["_DisplacementMap_mapPoint_x", "_DisplacementMap_mapPoint_y"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DisplacementMap_mapPoint_x", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DisplacementMapFilter, "mapPoint", "point", "x"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DisplacementMap_mapPoint_y", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DisplacementMapFilter, "mapPoint", "point", "y"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DisplacementMap_mode", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DisplacementMapFilter, "mode"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DisplacementMap_scaleX", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DisplacementMapFilter, "scaleX"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DisplacementMap_scaleY", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DisplacementMapFilter, "scaleY"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DropShadow_alpha", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DropShadowFilter, "alpha"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DropShadow_angle", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DropShadowFilter, "angle"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DropShadow_blurX", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DropShadowFilter, "blurX"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DropShadow_blurY", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DropShadowFilter, "blurY"]);
        caurina.transitions.Tweener.registerSpecialPropertySplitter("_DropShadow_color", caurina.transitions.properties.FilterShortcuts._generic_color_splitter, ["_DropShadow_color_r", "_DropShadow_color_g", "_DropShadow_color_b"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DropShadow_color_r", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DropShadowFilter, "color", "color", "r"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DropShadow_color_g", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DropShadowFilter, "color", "color", "g"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DropShadow_color_b", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DropShadowFilter, "color", "color", "b"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DropShadow_distance", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DropShadowFilter, "distance"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DropShadow_hideObject", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DropShadowFilter, "hideObject"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DropShadow_inner", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DropShadowFilter, "inner"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DropShadow_knockout", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DropShadowFilter, "knockout"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DropShadow_quality", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DropShadowFilter, "quality"]);
        caurina.transitions.Tweener.registerSpecialProperty("_DropShadow_strength", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.DropShadowFilter, "strength"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Glow_alpha", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GlowFilter, "alpha"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Glow_blurX", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GlowFilter, "blurX"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Glow_blurY", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GlowFilter, "blurY"]);
        caurina.transitions.Tweener.registerSpecialPropertySplitter("_Glow_color", caurina.transitions.properties.FilterShortcuts._generic_color_splitter, ["_Glow_color_r", "_Glow_color_g", "_Glow_color_b"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Glow_color_r", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GlowFilter, "color", "color", "r"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Glow_color_g", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GlowFilter, "color", "color", "g"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Glow_color_b", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GlowFilter, "color", "color", "b"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Glow_inner", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GlowFilter, "inner"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Glow_knockout", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GlowFilter, "knockout"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Glow_quality", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GlowFilter, "quality"]);
        caurina.transitions.Tweener.registerSpecialProperty("_Glow_strength", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GlowFilter, "strength"]);
        caurina.transitions.Tweener.registerSpecialProperty("_GradientBevel_angle", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GradientBevelFilter, "angle"]);
        caurina.transitions.Tweener.registerSpecialProperty("_GradientBevel_blurX", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GradientBevelFilter, "blurX"]);
        caurina.transitions.Tweener.registerSpecialProperty("_GradientBevel_blurY", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GradientBevelFilter, "blurY"]);
        caurina.transitions.Tweener.registerSpecialProperty("_GradientBevel_distance", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GradientBevelFilter, "distance"]);
        caurina.transitions.Tweener.registerSpecialProperty("_GradientBevel_quality", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GradientBevelFilter, "quality"]);
        caurina.transitions.Tweener.registerSpecialProperty("_GradientBevel_strength", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GradientBevelFilter, "strength"]);
        caurina.transitions.Tweener.registerSpecialProperty("_GradientBevel_type", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GradientBevelFilter, "type"]);
        caurina.transitions.Tweener.registerSpecialProperty("_GradientGlow_angle", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GradientGlowFilter, "angle"]);
        caurina.transitions.Tweener.registerSpecialProperty("_GradientGlow_blurX", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GradientGlowFilter, "blurX"]);
        caurina.transitions.Tweener.registerSpecialProperty("_GradientGlow_blurY", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GradientGlowFilter, "blurY"]);
        caurina.transitions.Tweener.registerSpecialProperty("_GradientGlow_distance", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GradientGlowFilter, "distance"]);
        caurina.transitions.Tweener.registerSpecialProperty("_GradientGlow_knockout", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GradientGlowFilter, "knockout"]);
        caurina.transitions.Tweener.registerSpecialProperty("_GradientGlow_quality", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GradientGlowFilter, "quality"]);
        caurina.transitions.Tweener.registerSpecialProperty("_GradientGlow_strength", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GradientGlowFilter, "strength"]);
        caurina.transitions.Tweener.registerSpecialProperty("_GradientGlow_type", caurina.transitions.properties.FilterShortcuts._filter_property_get, caurina.transitions.properties.FilterShortcuts._filter_property_set, [flash.filters.GradientGlowFilter, "type"]);
    }

    static function _generic_color_splitter(p_value, p_parameters)
    {
        var __reg1 = new Array();
        __reg1.push({name: p_parameters[0], value: caurina.transitions.AuxFunctions.numberToR(p_value)});
        __reg1.push({name: p_parameters[1], value: caurina.transitions.AuxFunctions.numberToG(p_value)});
        __reg1.push({name: p_parameters[2], value: caurina.transitions.AuxFunctions.numberToB(p_value)});
        return __reg1;
    }

    static function _generic_point_splitter(p_value, p_parameters)
    {
        var __reg1 = new Array();
        __reg1.push({name: p_parameters[0], value: p_value.x});
        __reg1.push({name: p_parameters[1], value: p_value.y});
        return __reg1;
    }

    static function _generic_matrix_splitter(p_value, p_parameters)
    {
        if (p_value == null) 
        {
            p_value = p_parameters[0].concat();
        }
        var __reg5 = new Array();
        var __reg1 = 0;
        while (__reg1 < p_value.length) 
        {
            __reg5.push({name: p_parameters[1][__reg1], value: p_value[__reg1]});
            ++__reg1;
        }
        return __reg5;
    }

    static function _filter_splitter(p_value)
    {
        var __reg2 = new Array();
        if (p_value instanceof flash.filters.BevelFilter) 
        {
            __reg2.push({name: "_Bevel_angle", value: flash.filters.BevelFilter(p_value).angle});
            __reg2.push({name: "_Bevel_blurX", value: flash.filters.BevelFilter(p_value).blurX});
            __reg2.push({name: "_Bevel_blurY", value: flash.filters.BevelFilter(p_value).blurY});
            __reg2.push({name: "_Bevel_distance", value: flash.filters.BevelFilter(p_value).distance});
            __reg2.push({name: "_Bevel_highlightAlpha", value: flash.filters.BevelFilter(p_value).highlightAlpha});
            __reg2.push({name: "_Bevel_highlightColor", value: flash.filters.BevelFilter(p_value).highlightColor});
            __reg2.push({name: "_Bevel_knockout", value: flash.filters.BevelFilter(p_value).knockout});
            __reg2.push({name: "_Bevel_quality", value: flash.filters.BevelFilter(p_value).quality});
            __reg2.push({name: "_Bevel_shadowAlpha", value: flash.filters.BevelFilter(p_value).shadowAlpha});
            __reg2.push({name: "_Bevel_shadowColor", value: flash.filters.BevelFilter(p_value).shadowColor});
            __reg2.push({name: "_Bevel_strength", value: flash.filters.BevelFilter(p_value).strength});
            __reg2.push({name: "_Bevel_type", value: flash.filters.BevelFilter(p_value).type});
        }
        else if (p_value instanceof flash.filters.BlurFilter) 
        {
            __reg2.push({name: "_Blur_blurX", value: flash.filters.BlurFilter(p_value).blurX});
            __reg2.push({name: "_Blur_blurY", value: flash.filters.BlurFilter(p_value).blurY});
            __reg2.push({name: "_Blur_quality", value: flash.filters.BlurFilter(p_value).quality});
        }
        else if (p_value instanceof flash.filters.ColorMatrixFilter) 
        {
            __reg2.push({name: "_ColorMatrix_matrix", value: flash.filters.ColorMatrixFilter(p_value).matrix});
        }
        else if (p_value instanceof flash.filters.ConvolutionFilter) 
        {
            __reg2.push({name: "_Convolution_alpha", value: flash.filters.ConvolutionFilter(p_value).alpha});
            __reg2.push({name: "_Convolution_bias", value: flash.filters.ConvolutionFilter(p_value).bias});
            __reg2.push({name: "_Convolution_clamp", value: flash.filters.ConvolutionFilter(p_value).clamp});
            __reg2.push({name: "_Convolution_color", value: flash.filters.ConvolutionFilter(p_value).color});
            __reg2.push({name: "_Convolution_divisor", value: flash.filters.ConvolutionFilter(p_value).divisor});
            __reg2.push({name: "_Convolution_matrixX", value: flash.filters.ConvolutionFilter(p_value).matrixX});
            __reg2.push({name: "_Convolution_matrixY", value: flash.filters.ConvolutionFilter(p_value).matrixY});
            __reg2.push({name: "_Convolution_preserveAlpha", value: flash.filters.ConvolutionFilter(p_value).preserveAlpha});
        }
        else if (p_value instanceof flash.filters.DisplacementMapFilter) 
        {
            __reg2.push({name: "_DisplacementMap_alpha", value: flash.filters.DisplacementMapFilter(p_value).alpha});
            __reg2.push({name: "_DisplacementMap_color", value: flash.filters.DisplacementMapFilter(p_value).color});
            __reg2.push({name: "_DisplacementMap_componentX", value: flash.filters.DisplacementMapFilter(p_value).componentX});
            __reg2.push({name: "_DisplacementMap_componentY", value: flash.filters.DisplacementMapFilter(p_value).componentY});
            __reg2.push({name: "_DisplacementMap_mapBitmap", value: flash.filters.DisplacementMapFilter(p_value).mapBitmap});
            __reg2.push({name: "_DisplacementMap_mapPoint", value: flash.filters.DisplacementMapFilter(p_value).mapPoint});
            __reg2.push({name: "_DisplacementMap_mode", value: flash.filters.DisplacementMapFilter(p_value).mode});
            __reg2.push({name: "_DisplacementMap_scaleX", value: flash.filters.DisplacementMapFilter(p_value).scaleX});
            __reg2.push({name: "_DisplacementMap_scaleY", value: flash.filters.DisplacementMapFilter(p_value).scaleY});
        }
        else if (p_value instanceof flash.filters.DropShadowFilter) 
        {
            __reg2.push({name: "_DropShadow_alpha", value: flash.filters.DropShadowFilter(p_value).alpha});
            __reg2.push({name: "_DropShadow_angle", value: flash.filters.DropShadowFilter(p_value).angle});
            __reg2.push({name: "_DropShadow_blurX", value: flash.filters.DropShadowFilter(p_value).blurX});
            __reg2.push({name: "_DropShadow_blurY", value: flash.filters.DropShadowFilter(p_value).blurY});
            __reg2.push({name: "_DropShadow_color", value: flash.filters.DropShadowFilter(p_value).color});
            __reg2.push({name: "_DropShadow_distance", value: flash.filters.DropShadowFilter(p_value).distance});
            __reg2.push({name: "_DropShadow_hideObject", value: flash.filters.DropShadowFilter(p_value).hideObject});
            __reg2.push({name: "_DropShadow_inner", value: flash.filters.DropShadowFilter(p_value).inner});
            __reg2.push({name: "_DropShadow_knockout", value: flash.filters.DropShadowFilter(p_value).knockout});
            __reg2.push({name: "_DropShadow_quality", value: flash.filters.DropShadowFilter(p_value).quality});
            __reg2.push({name: "_DropShadow_strength", value: flash.filters.DropShadowFilter(p_value).strength});
        }
        else if (p_value instanceof flash.filters.GlowFilter) 
        {
            __reg2.push({name: "_Glow_alpha", value: flash.filters.GlowFilter(p_value).alpha});
            __reg2.push({name: "_Glow_blurX", value: flash.filters.GlowFilter(p_value).blurX});
            __reg2.push({name: "_Glow_blurY", value: flash.filters.GlowFilter(p_value).blurY});
            __reg2.push({name: "_Glow_color", value: flash.filters.GlowFilter(p_value).color});
            __reg2.push({name: "_Glow_inner", value: flash.filters.GlowFilter(p_value).inner});
            __reg2.push({name: "_Glow_knockout", value: flash.filters.GlowFilter(p_value).knockout});
            __reg2.push({name: "_Glow_quality", value: flash.filters.GlowFilter(p_value).quality});
            __reg2.push({name: "_Glow_strength", value: flash.filters.GlowFilter(p_value).strength});
        }
        else if (p_value instanceof flash.filters.GradientBevelFilter) 
        {
            __reg2.push({name: "_GradientBevel_angle", value: flash.filters.GradientBevelFilter(p_value).strength});
            __reg2.push({name: "_GradientBevel_blurX", value: flash.filters.GradientBevelFilter(p_value).blurX});
            __reg2.push({name: "_GradientBevel_blurY", value: flash.filters.GradientBevelFilter(p_value).blurY});
            __reg2.push({name: "_GradientBevel_distance", value: flash.filters.GradientBevelFilter(p_value).distance});
            __reg2.push({name: "_GradientBevel_quality", value: flash.filters.GradientBevelFilter(p_value).quality});
            __reg2.push({name: "_GradientBevel_strength", value: flash.filters.GradientBevelFilter(p_value).strength});
            __reg2.push({name: "_GradientBevel_type", value: flash.filters.GradientBevelFilter(p_value).type});
        }
        else if (p_value instanceof flash.filters.GradientGlowFilter) 
        {
            __reg2.push({name: "_GradientGlow_angle", value: flash.filters.GradientGlowFilter(p_value).strength});
            __reg2.push({name: "_GradientGlow_blurX", value: flash.filters.GradientGlowFilter(p_value).blurX});
            __reg2.push({name: "_GradientGlow_blurY", value: flash.filters.GradientGlowFilter(p_value).blurY});
            __reg2.push({name: "_GradientGlow_distance", value: flash.filters.GradientGlowFilter(p_value).distance});
            __reg2.push({name: "_GradientGlow_knockout", value: flash.filters.GradientGlowFilter(p_value).knockout});
            __reg2.push({name: "_GradientGlow_quality", value: flash.filters.GradientGlowFilter(p_value).quality});
            __reg2.push({name: "_GradientGlow_strength", value: flash.filters.GradientGlowFilter(p_value).strength});
            __reg2.push({name: "_GradientGlow_type", value: flash.filters.GradientGlowFilter(p_value).type});
        }
        else 
        {
            trace("Tweener FilterShortcuts Error :: Unknown filter class used");
        }
        return __reg2;
    }

    static function _filter_property_get(p_obj, p_parameters)
    {
        var __reg2 = p_obj.filters;
        var __reg1 = undefined;
        var __reg8 = p_parameters[0];
        var __reg3 = p_parameters[1];
        var __reg6 = p_parameters[2];
        __reg1 = 0;
        while (__reg1 < __reg2.length) 
        {
            if (__reg2[__reg1] instanceof __reg8) 
            {
                if (__reg6 == "color") 
                {
                    var __reg4 = p_parameters[3];
                    if (__reg4 == "r") 
                    {
                        return caurina.transitions.AuxFunctions.numberToR(__reg2[__reg1][__reg3]);
                    }
                    if (__reg4 == "g") 
                    {
                        return caurina.transitions.AuxFunctions.numberToG(__reg2[__reg1][__reg3]);
                    }
                    if (__reg4 == "b") 
                    {
                        return caurina.transitions.AuxFunctions.numberToB(__reg2[__reg1][__reg3]);
                    }
                }
                else if (__reg6 == "matrix") 
                {
                    return __reg2[__reg1][__reg3][p_parameters[3]];
                }
                else if (__reg6 == "point") 
                {
                    return __reg2[__reg1][__reg3][p_parameters[3]];
                }
                else 
                {
                    return __reg2[__reg1][__reg3];
                }
            }
            ++__reg1;
        }
        var __reg7 = undefined;
        if ((__reg0 = __reg8) === flash.filters.BevelFilter) 
        {
            __reg7 = {angle: NaN, blurX: 0, blurY: 0, distance: 0, highlightAlpha: 1, highlightColor: NaN, knockout: null, quality: NaN, shadowAlpha: 1, shadowColor: NaN, strength: 2, type: null};
        }
        else if (__reg0 === flash.filters.BlurFilter) 
        {
            __reg7 = {blurX: 0, blurY: 0, quality: NaN};
        }
        else if (__reg0 === flash.filters.ColorMatrixFilter) 
        {
            __reg7 = {matrix: [1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0]};
        }
        else if (__reg0 === flash.filters.ConvolutionFilter) 
        {
            __reg7 = {alpha: 0, bias: 0, clamp: null, color: NaN, divisor: 1, matrix: [1], matrixX: 1, matrixY: 1, preserveAlpha: null};
        }
        else if (__reg0 === flash.filters.DisplacementMapFilter) 
        {
            __reg7 = {alpha: 0, color: NaN, componentX: null, componentY: null, mapBitmap: null, mapPoint: null, mode: null, scaleX: 0, scaleY: 0};
        }
        else if (__reg0 === flash.filters.DropShadowFilter) 
        {
            __reg7 = {distance: 0, angle: NaN, color: NaN, alpha: 1, blurX: 0, blurY: 0, strength: 1, quality: NaN, inner: null, knockout: null, hideObject: null};
        }
        else if (__reg0 === flash.filters.GlowFilter) 
        {
            __reg7 = {alpha: 1, blurX: 0, blurY: 0, color: NaN, inner: null, knockout: null, quality: NaN, strength: 2};
        }
        else if (__reg0 === flash.filters.GradientBevelFilter) 
        {
            __reg7 = {alphas: null, angle: NaN, blurX: 0, blurY: 0, colors: null, distance: 0, knockout: null, quality: NaN, ratios: NaN, strength: 1, type: null};
        }
        else if (__reg0 === flash.filters.GradientGlowFilter) 
        {
            __reg7 = {alphas: null, angle: NaN, blurX: 0, blurY: 0, colors: null, distance: 0, knockout: null, quality: NaN, ratios: NaN, strength: 1, type: null};
        }
        if (__reg6 == "color") 
        {
            return NaN;
        }
        if (__reg6 == "matrix") 
        {
            return __reg7[__reg3][p_parameters[3]];
        }
        if (__reg6 == "point") 
        {
            return __reg7[__reg3][p_parameters[3]];
        }
        return __reg7[__reg3];
    }

    static function _filter_property_set(p_obj, p_value, p_parameters)
    {
        var __reg2 = p_obj.filters;
        var __reg1 = undefined;
        var __reg12 = p_parameters[0];
        var __reg3 = p_parameters[1];
        var __reg9 = p_parameters[2];
        __reg1 = 0;
        while (__reg1 < __reg2.length) 
        {
            if (__reg2[__reg1] instanceof __reg12) 
            {
                if (__reg9 == "color") 
                {
                    var __reg5 = p_parameters[3];
                    if (__reg5 == "r") 
                    {
                        __reg2[__reg1][__reg3] = __reg2[__reg1][__reg3] & 65535 | p_value << 16;
                    }
                    if (__reg5 == "g") 
                    {
                        __reg2[__reg1][__reg3] = __reg2[__reg1][__reg3] & 16711935 | p_value << 8;
                    }
                    if (__reg5 == "b") 
                    {
                        __reg2[__reg1][__reg3] = __reg2[__reg1][__reg3] & 16776960 | p_value;
                    }
                }
                else if (__reg9 == "matrix") 
                {
                    var __reg6 = __reg2[__reg1][__reg3];
                    __reg6[p_parameters[3]] = p_value;
                    __reg2[__reg1][__reg3] = __reg6;
                }
                else if (__reg9 == "point") 
                {
                    var __reg7 = flash.geom.Point(__reg2[__reg1][__reg3]);
                    __reg7[p_parameters[3]] = p_value;
                    __reg2[__reg1][__reg3] = __reg7;
                }
                else 
                {
                    __reg2[__reg1][__reg3] = p_value;
                }
                p_obj.filters = __reg2;
                return undefined;
            }
            ++__reg1;
        }
        if (__reg2 == undefined) 
        {
            __reg2 = new Array();
        }
        var __reg10 = undefined;
        if ((__reg0 = __reg12) === flash.filters.BevelFilter) 
        {
            __reg10 = new flash.filters.BevelFilter(0, 45, 16777215, 1, 0, 1, 0, 0);
        }
        else if (__reg0 === flash.filters.BlurFilter) 
        {
            __reg10 = new flash.filters.BlurFilter(0, 0);
        }
        else if (__reg0 === flash.filters.ColorMatrixFilter) 
        {
            __reg10 = new flash.filters.ColorMatrixFilter([1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0]);
        }
        else if (__reg0 === flash.filters.ConvolutionFilter) 
        {
            __reg10 = new flash.filters.ConvolutionFilter(1, 1, [1], 1, 0, true, true, 0, 0);
        }
        else if (__reg0 === flash.filters.DisplacementMapFilter) 
        {
            __reg10 = new flash.filters.DisplacementMapFilter(new flash.display.BitmapData(10, 10), new flash.geom.Point(0, 0), 0, 1, 0, 0);
        }
        else if (__reg0 === flash.filters.DropShadowFilter) 
        {
            __reg10 = new flash.filters.DropShadowFilter(0, 45, 0, 1, 0, 0);
        }
        else if (__reg0 === flash.filters.GlowFilter) 
        {
            __reg10 = new flash.filters.GlowFilter(16711680, 1, 0, 0);
        }
        else if (__reg0 === flash.filters.GradientBevelFilter) 
        {
            __reg10 = new flash.filters.GradientBevelFilter(0, 45, [16777215, 0], [1, 1], [32, 223], 0, 0);
        }
        else if (__reg0 === flash.filters.GradientGlowFilter) 
        {
            __reg10 = new flash.filters.GradientGlowFilter(0, 45, [16777215, 0], [1, 1], [32, 223], 0, 0);
        }
        __reg2.push(__reg10);
        p_obj.filters = __reg2;
        caurina.transitions.properties.FilterShortcuts._filter_property_set(p_obj, p_value, p_parameters);
    }

}
