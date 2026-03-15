.class public Lcom/android/settings/biometrics/face/FaceSettingsVideoPreferenceController;
.super Lcom/android/settings/widget/VideoPreferenceController;
.source "FaceSettingsVideoPreferenceController.java"


# static fields
.field private static final KEY_VIDEO:Ljava/lang/String; = "security_settings_face_video"


# instance fields
.field private mVideoPreference:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "security_settings_face_video"

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsVideoPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/VideoPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/widget/VideoPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "security_settings_face_video"

    .line 47
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/VideoPreference;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsVideoPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    .line 48
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsVideoPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VideoPreference;->onViewVisible(Z)V

    return-void
.end method
