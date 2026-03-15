.class public Lcom/android/settings/widget/VideoPreference;
.super Landroidx/preference/Preference;
.source "VideoPreference.java"


# instance fields
.field mAnimationAvailable:Z

.field private mAnimationId:I

.field private mAspectRatio:F

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPreviewResource:I

.field private mSurface:Landroid/view/Surface;

.field private mVideoPath:Landroid/net/Uri;

.field private mVideoPaused:Z

.field mVideoReady:Z

.field private mViewVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 56
    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRatio:F

    const/4 v0, -0x2

    .line 61
    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mHeight:I

    .line 65
    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/VideoPreference;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 56
    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRatio:F

    const/4 v0, -0x2

    .line 61
    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mHeight:I

    .line 71
    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/VideoPreference;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/VideoPreference;)Landroid/view/Surface;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/widget/VideoPreference;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/widget/VideoPreference;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/widget/VideoPreference;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/settings/widget/VideoPreference;->mViewVisible:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/VideoPreference;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    return p0
.end method

.method private initMediaPlayer()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPath:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 232
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 233
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/settings/widget/-$$Lambda$VideoPreference$11ZtTKuj0NptN-aiEnQGgUzVvRE;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/-$$Lambda$VideoPreference$11ZtTKuj0NptN-aiEnQGgUzVvRE;-><init>(Lcom/android/settings/widget/VideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/android/settings/widget/-$$Lambda$VideoPreference$aFxutwOOqnKuOzRYe5J9dLOLMfs;->INSTANCE:Lcom/android/settings/widget/-$$Lambda$VideoPreference$aFxutwOOqnKuOzRYe5J9dLOLMfs;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 237
    iget-object p0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/settings/R$styleable;->VideoPreference:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 83
    :try_start_0
    iget v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    goto :goto_0

    .line 85
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    :goto_0
    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    .line 86
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    .line 88
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPath:Landroid/net/Uri;

    .line 90
    iget p1, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewResource:I

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 91
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    goto :goto_1

    .line 92
    :cond_1
    iget p1, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewResource:I

    :goto_1
    iput p1, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewResource:I

    .line 93
    iget p1, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewResource:I

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    .line 108
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 96
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->initMediaPlayer()V

    .line 97
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    if-lez p1, :cond_3

    .line 98
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    const p1, 0x7f0d0215

    .line 99
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 100
    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationAvailable:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/widget/VideoPreference;->updateAspectRatio()V

    goto :goto_2

    .line 103
    :cond_3
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    :try_start_2
    const-string p0, "VideoPreference"

    const-string p1, "Animation resource not found. Will not show animation."

    .line 106
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :goto_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method static synthetic lambda$initMediaPlayer$2(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    .line 235
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 246
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 247
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mVideoReady:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public isVideoPaused()Z
    .locals 0

    .line 254
    iget-boolean p0, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    return p0
.end method

.method public synthetic lambda$initMediaPlayer$1$VideoPreference(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    .line 234
    iput-boolean p1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoReady:Z

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$0$VideoPreference(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/VideoPreference;->updateViewStates(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 114
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 116
    iget-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationAvailable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a04be

    .line 120
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    const v1, 0x7f0a04bd

    .line 121
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a04bc

    .line 122
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a04bb

    .line 123
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/AspectRatioFrameLayout;

    .line 126
    iget v3, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewResource:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget v3, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRatio:F

    invoke-virtual {p1, v3}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 128
    iget v3, p0, Lcom/android/settings/widget/VideoPreference;->mHeight:I

    const/4 v4, -0x1

    if-lt v3, v4, :cond_1

    .line 129
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/widget/VideoPreference;->updateViewStates(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 134
    new-instance p1, Lcom/android/settings/widget/-$$Lambda$VideoPreference$349cECzOJPmfxN0a-IlGkvZfvz4;

    invoke-direct {p1, p0, v1, v2}, Lcom/android/settings/widget/-$$Lambda$VideoPreference$349cECzOJPmfxN0a-IlGkvZfvz4;-><init>(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance p1, Lcom/android/settings/widget/VideoPreference$1;

    invoke-direct {p1, p0, v1, v2}, Lcom/android/settings/widget/VideoPreference$1;-><init>(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public onDetached()V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->releaseMediaPlayer()V

    .line 199
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public onViewInvisible()V
    .locals 1

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mViewVisible:Z

    .line 210
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->releaseMediaPlayer()V

    return-void
.end method

.method public onViewVisible(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mViewVisible:Z

    .line 204
    iput-boolean p1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    .line 205
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->initMediaPlayer()V

    return-void
.end method

.method public setHeight(F)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    .line 263
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 262
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/settings/widget/VideoPreference;->mHeight:I

    return-void
.end method

.method public setVideo(II)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    .line 222
    iput p2, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewResource:I

    .line 223
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->releaseMediaPlayer()V

    .line 224
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/VideoPreference;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method updateAspectRatio()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRatio:F

    return-void
.end method

.method updateViewStates(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 184
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 186
    iput-boolean p1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 188
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 191
    iput-boolean v1, p0, Lcom/android/settings/widget/VideoPreference;->mVideoPaused:Z

    :cond_1
    :goto_0
    return-void
.end method
