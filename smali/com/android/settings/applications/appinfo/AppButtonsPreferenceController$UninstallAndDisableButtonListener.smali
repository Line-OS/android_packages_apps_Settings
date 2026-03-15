.class Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;
.super Ljava/lang/Object;
.source "AppButtonsPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UninstallAndDisableButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;)V
    .locals 0

    .line 209
    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 213
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$200(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    .line 217
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$400(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v2

    const-class v3, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    .line 218
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$500(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$400(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v2

    const/16 v3, 0x369

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p1, v2, v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 222
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$700(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/core/InstrumentedPreferenceFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$600(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 226
    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$400(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 227
    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$800(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result v2

    .line 226
    invoke-static {v0, p1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUninstallBlocked(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 228
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$900(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 229
    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$400(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 230
    invoke-static {v4}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$800(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result v4

    .line 229
    invoke-static {v2, p1, v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    .line 232
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$400(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_3

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v2, v0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_7

    .line 234
    iget-boolean p1, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p1, :cond_5

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1000(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 238
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1100(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1200(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 239
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0, v3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    goto :goto_3

    .line 241
    :cond_4
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    goto :goto_3

    .line 244
    :cond_5
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$500(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 245
    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$400(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    .line 246
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v2, v2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_6

    const/16 v2, 0x36a

    goto :goto_2

    :cond_6
    const/16 v2, 0x36b

    :goto_2
    new-array v3, v1, [Landroid/util/Pair;

    .line 244
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 249
    new-instance p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1400(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p1, v0, v2, p0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_7
    const/high16 p0, 0x800000

    and-int/2addr p0, v4

    if-nez p0, :cond_8

    .line 253
    invoke-virtual {v0, p1, v3, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_3

    .line 255
    :cond_8
    invoke-virtual {v0, p1, v1, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->uninstallPkg(Ljava/lang/String;ZZ)V

    :goto_3
    return-void
.end method
