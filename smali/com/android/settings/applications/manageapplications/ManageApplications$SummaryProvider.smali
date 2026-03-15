.class Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    .line 1534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1535
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    .line 1536
    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/applications/manageapplications/ManageApplications$1;)V
    .locals 0

    .line 1529
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;)Landroid/content/Context;
    .locals 0

    .line 1529
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;)Lcom/android/settings/dashboard/SummaryLoader;
    .locals 0

    .line 1529
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-object p0
.end method


# virtual methods
.method public setListening(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1542
    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    .line 1543
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider$1;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;Landroid/content/Context;ILandroid/content/pm/PackageManager;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 1549
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
