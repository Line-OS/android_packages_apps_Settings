.class Lcom/android/settings/applications/AllAppsInfoPreferenceController$1;
.super Lcom/android/settings/applications/InstalledAppCounter;
.source "AllAppsInfoPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/AllAppsInfoPreferenceController;->onReloadDataCompleted(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AllAppsInfoPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AllAppsInfoPreferenceController;Landroid/content/Context;ILandroid/content/pm/PackageManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/applications/AllAppsInfoPreferenceController$1;->this$0:Lcom/android/settings/applications/AllAppsInfoPreferenceController;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/applications/InstalledAppCounter;-><init>(Landroid/content/Context;ILandroid/content/pm/PackageManager;)V

    return-void
.end method


# virtual methods
.method protected onCountComplete(I)V
    .locals 3

    .line 69
    iget-object p0, p0, Lcom/android/settings/applications/AllAppsInfoPreferenceController$1;->this$0:Lcom/android/settings/applications/AllAppsInfoPreferenceController;

    iget-object v0, p0, Lcom/android/settings/applications/AllAppsInfoPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-static {p0}, Lcom/android/settings/applications/AllAppsInfoPreferenceController;->access$000(Lcom/android/settings/applications/AllAppsInfoPreferenceController;)Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f12016d

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
