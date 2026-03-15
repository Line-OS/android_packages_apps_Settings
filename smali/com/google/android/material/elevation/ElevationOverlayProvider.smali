.class public Lcom/google/android/material/elevation/ElevationOverlayProvider;
.super Ljava/lang/Object;
.source "ElevationOverlayProvider.java"


# instance fields
.field private final colorSurface:I

.field private final displayDensity:F

.field private final elevationOverlaysColor:I

.field private final elevationOverlaysEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget v0, Lcom/google/android/material/R$attr;->elevationOverlaysEnabled:I

    .line 40
    invoke-static {p1, v0}, Lcom/google/android/material/resources/MaterialAttributes;->resolveBooleanAttribute(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlaysEnabled:Z

    .line 41
    sget v0, Lcom/google/android/material/R$attr;->elevationOverlaysColor:I

    const/4 v1, 0x0

    .line 42
    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlaysColor:I

    .line 43
    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->displayDensity:F

    return-void
.end method

.method private isSurfaceColor(I)Z
    .locals 1

    const/16 v0, 0xff

    .line 114
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iget p0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public calculateOverlayAlphaFraction(F)F
    .locals 2

    .line 88
    iget p0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->displayDensity:F

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-lez v1, :cond_1

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, p0

    const/high16 p0, 0x40900000    # 4.5f

    float-to-double v0, p1

    .line 92
    invoke-static {v0, v1}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float/2addr p1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 93
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public layerOverlay(IF)I
    .locals 0

    .line 71
    invoke-virtual {p0, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->calculateOverlayAlphaFraction(F)F

    move-result p2

    .line 72
    iget p0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlaysColor:I

    invoke-static {p1, p0, p2}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result p0

    return p0
.end method

.method public layerOverlayIfNeeded(IF)I
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlaysEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->isSurfaceColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->layerOverlay(IF)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method
