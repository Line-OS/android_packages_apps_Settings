.class public Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;
.super Ljava/lang/Object;
.source "NotificationSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImportanceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettingsBase;


# direct methods
.method protected constructor <init>(Lcom/android/settings/notification/NotificationSettingsBase;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected onImportanceChanged()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationSettingsBase;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/NotificationPreferenceController;

    .line 320
    invoke-virtual {v2, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    .line 322
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-static {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->access$100(Lcom/android/settings/notification/NotificationSettingsBase;)V

    return-void
.end method
