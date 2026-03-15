.class Lcom/android/settings/notification/RemoteVolumePreferenceController$1;
.super Ljava/lang/Object;
.source "RemoteVolumePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/volume/MediaSessions$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RemoteVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/RemoteVolumePreferenceController;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteRemoved(Landroid/media/session/MediaSession$Token;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->access$000(Lcom/android/settings/notification/RemoteVolumePreferenceController;Landroid/media/session/MediaSession$Token;)V

    .line 69
    iget-object p0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onRemoteUpdate(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 1

    .line 57
    iget-object p2, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v0, p2, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    if-nez v0, :cond_0

    .line 58
    invoke-static {p2, p1}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->access$000(Lcom/android/settings/notification/RemoteVolumePreferenceController;Landroid/media/session/MediaSession$Token;)V

    .line 60
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object p2, p2, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    iget-object p0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object p2, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->access$100(Lcom/android/settings/notification/RemoteVolumePreferenceController;Lcom/android/settings/notification/VolumeSeekBarPreference;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V

    :cond_1
    return-void
.end method

.method public onRemoteVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
    .locals 0

    .line 77
    iget-object p2, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object p2, p2, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object p1, p1, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->setSliderPosition(I)Z

    :cond_0
    return-void
.end method
