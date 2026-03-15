.class public abstract Lcom/android/settings/notification/RingtonePreferenceControllerBase;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RingtonePreferenceControllerBase.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$updateSummary$1(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSummary(Landroidx/preference/Preference;)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->getRingtoneType()I

    move-result v1

    .line 53
    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x104062e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 64
    new-instance v0, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$DGmnmcDCcHzdJN6wPwVZkSTCfk0;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$DGmnmcDCcHzdJN6wPwVZkSTCfk0;-><init>(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract getRingtoneType()I
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$updateState$0$RingtonePreferenceControllerBase(Landroidx/preference/Preference;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->updateSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 49
    new-instance v0, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$Y95tp89vC8fk0DlynP4A12MKPAU;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$Y95tp89vC8fk0DlynP4A12MKPAU;-><init>(Lcom/android/settings/notification/RingtonePreferenceControllerBase;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
