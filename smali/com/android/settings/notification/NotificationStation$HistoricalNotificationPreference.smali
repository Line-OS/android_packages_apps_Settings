.class Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;
.super Landroidx/preference/Preference;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoricalNotificationPreference"
.end annotation


# static fields
.field private static sLastExpandedTimestamp:J


# instance fields
.field private final mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;)V
    .locals 0

    .line 602
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d0110

    .line 603
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 604
    iput-object p2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    return-void
.end method

.method static synthetic access$502(J)J
    .locals 0

    .line 597
    sput-wide p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->sLastExpandedTimestamp:J

    return-wide p0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;)Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;
    .locals 0

    .line 597
    iget-object p0, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    return-object p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 609
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 611
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const v0, 0x7f0a0212

    .line 612
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    const v0, 0x7f0a0336

    .line 615
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v0, 0x7f0a0473

    .line 618
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-wide v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-virtual {v0, v1, v2}, Landroid/widget/DateTimeView;->setTime(J)V

    const v0, 0x7f0a0474

    .line 619
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0337

    .line 620
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a01a4

    .line 622
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 623
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->extra:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-wide v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    sget-wide v3, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->sLastExpandedTimestamp:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 627
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;-><init>(Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    if-eqz p0, :cond_3

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public performClick()V
    .locals 0

    return-void
.end method
