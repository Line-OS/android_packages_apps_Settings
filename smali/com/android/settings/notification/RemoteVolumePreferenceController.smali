.class public Lcom/android/settings/notification/RemoteVolumePreferenceController;
.super Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.source "RemoteVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;
    }
.end annotation


# static fields
.field private static final KEY_REMOTE_VOLUME:Ljava/lang/String; = "remote_volume"

.field static final REMOTE_VOLUME:I = 0x64


# instance fields
.field mActiveToken:Landroid/media/session/MediaSession$Token;

.field mCallbacks:Lcom/android/settingslib/volume/MediaSessions$Callbacks;

.field mMediaController:Landroid/media/session/MediaController;

.field private mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "remote_volume"

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;-><init>(Lcom/android/settings/notification/RemoteVolumePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mCallbacks:Lcom/android/settingslib/volume/MediaSessions$Callbacks;

    .line 88
    new-instance v0, Lcom/android/settingslib/volume/MediaSessions;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mCallbacks:Lcom/android/settingslib/volume/MediaSessions$Callbacks;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settingslib/volume/MediaSessions;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/settingslib/volume/MediaSessions$Callbacks;)V

    iput-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    .line 89
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->getActiveRemoteToken(Landroid/content/Context;)Landroid/media/session/MediaSession$Token;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->updateToken(Landroid/media/session/MediaSession$Token;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/RemoteVolumePreferenceController;Landroid/media/session/MediaSession$Token;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->updateToken(Landroid/media/session/MediaSession$Token;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/RemoteVolumePreferenceController;Lcom/android/settings/notification/VolumeSeekBarPreference;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->updatePreference(Lcom/android/settings/notification/VolumeSeekBarPreference;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V

    return-void
.end method

.method public static getActiveRemoteToken(Landroid/content/Context;)Landroid/media/session/MediaSession$Token;
    .locals 3

    .line 103
    const-class v0, Landroid/media/session/MediaSessionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaSessionManager;

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    .line 106
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    .line 107
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v2

    .line 108
    invoke-static {v2}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->isRemote(Landroid/media/session/MediaController$PlaybackInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static isRemote(Landroid/media/session/MediaController$PlaybackInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 210
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updatePreference(Lcom/android/settings/notification/VolumeSeekBarPreference;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    const/4 p2, 0x1

    .line 225
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 226
    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->setSliderPosition(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateToken(Landroid/media/session/MediaSession$Token;)V
    .locals 2

    .line 230
    iput-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    if-eqz p1, :cond_0

    .line 232
    new-instance p1, Landroid/media/session/MediaController;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {p1, v0, v1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 234
    iput-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 120
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 121
    iget-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->updatePreference(Lcom/android/settings/notification/VolumeSeekBarPreference;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V

    :cond_1
    return-void
.end method

.method public getAudioStream()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    .line 215
    const-class p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;

    return-object p0
.end method

.method public getMax()I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getMax()I

    move-result p0

    return p0

    .line 167
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 170
    :cond_1
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 171
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v0

    :cond_2
    return v0
.end method

.method public getMin()I
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->getMin()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMuteIcon()I
    .locals 0

    const p0, 0x7f080292

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "remote_volume"

    return-object p0
.end method

.method public getSliderPosition()I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result p0

    return p0

    .line 143
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 146
    :cond_1
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 147
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v0

    :cond_2
    return v0
.end method

.method public isSliceable()Z
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "remote_volume"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 134
    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onPause()V

    .line 135
    iget-object p0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    invoke-virtual {p0}, Lcom/android/settingslib/volume/MediaSessions;->destroy()V

    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 128
    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onResume()V

    .line 129
    iget-object p0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    invoke-virtual {p0}, Lcom/android/settingslib/volume/MediaSessions;->init()V

    return-void
.end method

.method public setSliderPosition(I)Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 155
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 158
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
