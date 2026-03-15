.class public Lcom/android/settings/notification/AssistantCapabilityPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AssistantCapabilityPreferenceController.java"


# static fields
.field static final PRIORITIZER_KEY:Ljava/lang/String; = "asst_capability_prioritizer"

.field static final SMART_KEY:Ljava/lang/String; = "asst_capabilities_actions_replies"


# instance fields
.field private mBackend:Lcom/android/settings/notification/NotificationBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    new-instance p1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationBackend;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    :goto_0
    return p0
.end method

.method public isChecked()Z
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationBackend;->getAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asst_capability_prioritizer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "key_importance"

    .line 48
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v1, "asst_capabilities_actions_replies"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string p0, "key_contextual_actions"

    .line 50
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "key_text_replies"

    .line 51
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method setBackend(Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asst_capability_prioritizer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object p0, p0, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const-string v0, "key_importance"

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/notification/NotificationBackend;->allowAssistantAdjustment(Ljava/lang/String;Z)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asst_capabilities_actions_replies"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const-string v1, "key_contextual_actions"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/notification/NotificationBackend;->allowAssistantAdjustment(Ljava/lang/String;Z)V

    .line 62
    iget-object p0, p0, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const-string v0, "key_text_replies"

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/notification/NotificationBackend;->allowAssistantAdjustment(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
