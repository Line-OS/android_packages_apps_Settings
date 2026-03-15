.class Lcom/android/settings/notification/ChannelListPreferenceController$2;
.super Ljava/lang/Object;
.source "ChannelListPreferenceController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ChannelListPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/app/NotificationChannelGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ChannelListPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ChannelListPreferenceController;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/android/settings/notification/ChannelListPreferenceController$2;->this$0:Lcom/android/settings/notification/ChannelListPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)I
    .locals 0

    .line 289
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 291
    :cond_0
    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 294
    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 284
    check-cast p1, Landroid/app/NotificationChannelGroup;

    check-cast p2, Landroid/app/NotificationChannelGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/ChannelListPreferenceController$2;->compare(Landroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)I

    move-result p0

    return p0
.end method
