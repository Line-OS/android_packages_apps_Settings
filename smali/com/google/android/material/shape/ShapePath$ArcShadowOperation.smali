.class Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;
.super Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArcShadowOperation"
.end annotation


# instance fields
.field private final operation:Lcom/google/android/material/shape/ShapePath$PathArcOperation;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .locals 7

    .line 273
    iget-object p0, p0, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    iget v5, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    .line 274
    iget v6, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    .line 275
    new-instance v3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    iget v1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    iget v2, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    invoke-direct {v3, v0, v1, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, p2

    move-object v1, p4

    move-object v2, p1

    move v4, p3

    .line 276
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/shadow/ShadowRenderer;->drawCornerShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    return-void
.end method
