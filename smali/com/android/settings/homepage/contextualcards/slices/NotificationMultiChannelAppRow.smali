.class Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;
.super Ljava/lang/Object;
.source "NotificationMultiChannelAppRow.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/android/settings/notification/NotificationBackend$AppRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field private final mPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/content/pm/PackageInfo;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 41
    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public call()Lcom/android/settings/notification/NotificationBackend$AppRow;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->getChannelCount(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/role/RoleManager;

    .line 50
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/role/RoleManager;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 49
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->call()Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object p0

    return-object p0
.end method
