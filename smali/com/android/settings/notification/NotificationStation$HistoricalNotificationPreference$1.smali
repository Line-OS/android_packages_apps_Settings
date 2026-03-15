.class Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;

.field final synthetic val$extra:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;Landroid/widget/TextView;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;->this$0:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;

    iput-object p2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;->val$extra:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 631
    iget-object p1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;->val$extra:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 633
    iget-object p0, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;->this$0:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;

    invoke-static {p0}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->access$600(Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;)Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    move-result-object p0

    iget-wide p0, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->access$502(J)J

    return-void
.end method
