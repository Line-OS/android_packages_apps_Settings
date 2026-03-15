.class Lcom/android/settings/widget/VideoPreference$1;
.super Ljava/lang/Object;
.source "VideoPreference.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/VideoPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/VideoPreference;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$playButton:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iput-object p2, p0, Lcom/android/settings/widget/VideoPreference$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/settings/widget/VideoPreference$1;->val$playButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 140
    iget-object p2, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object p3, p2, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p3, :cond_0

    .line 141
    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p2, p3}, Lcom/android/settings/widget/VideoPreference;->access$002(Lcom/android/settings/widget/VideoPreference;Landroid/view/Surface;)Landroid/view/Surface;

    .line 142
    iget-object p0, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {p0}, Lcom/android/settings/widget/VideoPreference;->access$000(Lcom/android/settings/widget/VideoPreference;)Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/settings/widget/VideoPreference$1;->val$imageView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    invoke-static {p1}, Lcom/android/settings/widget/VideoPreference;->access$100(Lcom/android/settings/widget/VideoPreference;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-boolean p1, p1, Lcom/android/settings/widget/VideoPreference;->mVideoReady:Z

    if-eqz p1, :cond_2

    .line 163
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    invoke-static {p1}, Lcom/android/settings/widget/VideoPreference;->access$200(Lcom/android/settings/widget/VideoPreference;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object p1, p1, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 167
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object p1, p1, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 168
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->val$playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    :cond_2
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->this$0:Lcom/android/settings/widget/VideoPreference;

    iget-object p1, p1, Lcom/android/settings/widget/VideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference$1;->val$playButton:Landroid/widget/ImageView;

    .line 172
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 173
    iget-object p0, p0, Lcom/android/settings/widget/VideoPreference$1;->val$playButton:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method
