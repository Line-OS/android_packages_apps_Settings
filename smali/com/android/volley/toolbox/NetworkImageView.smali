.class public Lcom/android/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;
.source "NetworkImageView.java"


# instance fields
.field mDefaultImageBitmap:Landroid/graphics/Bitmap;

.field private mDefaultImageId:I

.field private mErrorImageBitmap:Landroid/graphics/Bitmap;

.field private mErrorImageId:I

.field private mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setDefaultImageOrNull()V
    .locals 1

    .line 246
    iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 276
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 277
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method loadImageIfNecessary(Z)V
    .locals 9

    .line 149
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 150
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 151
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v7

    .line 154
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 155
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 156
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_1

    :cond_2
    move v2, v4

    move v5, v2

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-nez v3, :cond_4

    return-void

    .line 168
    :cond_4
    iget-object v3, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v8, 0x0

    if-eqz v3, :cond_6

    .line 169
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-nez p1, :cond_5

    .line 173
    invoke-direct {p0}, Lcom/android/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    return-void

    .line 170
    :cond_5
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    throw v8

    .line 178
    :cond_6
    iget-object v3, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-nez v3, :cond_9

    if-eqz v2, :cond_7

    move v0, v4

    :cond_7
    if-eqz v5, :cond_8

    move v6, v4

    goto :goto_3

    :cond_8
    move v6, v1

    .line 197
    :goto_3
    iget-object v2, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v3, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    new-instance v4, Lcom/android/volley/toolbox/NetworkImageView$1;

    invoke-direct {v4, p0, p1}, Lcom/android/volley/toolbox/NetworkImageView$1;-><init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V

    move v5, v0

    .line 198
    invoke-virtual/range {v2 .. v7}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    throw v8

    .line 178
    :cond_9
    invoke-virtual {v3}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    throw v8
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-nez v0, :cond_0

    .line 271
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void

    .line 266
    :cond_0
    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    const/4 p0, 0x0

    throw p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 257
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    return-void
.end method

.method public setDefaultImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    .line 118
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDefaultImageResId(I)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageBitmap:Landroid/graphics/Bitmap;

    .line 107
    iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    return-void
.end method

.method public setErrorImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mErrorImageId:I

    .line 140
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mErrorImageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mErrorImageBitmap:Landroid/graphics/Bitmap;

    .line 129
    iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mErrorImageId:I

    return-void
.end method
