.class Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;
.super Lcom/android/settings/applications/InstalledAppCounter;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->setListening(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;Landroid/content/Context;ILandroid/content/pm/PackageManager;)V
    .locals 0

    .line 1543
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/applications/InstalledAppCounter;-><init>(Landroid/content/Context;ILandroid/content/pm/PackageManager;)V

    return-void
.end method


# virtual methods
.method protected onCountComplete(I)V
    .locals 4

    .line 1546
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->access$2000(Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;)Lcom/android/settings/dashboard/SummaryLoader;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;

    .line 1547
    invoke-static {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->access$1900(Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f12016d

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1546
    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    return-void
.end method
