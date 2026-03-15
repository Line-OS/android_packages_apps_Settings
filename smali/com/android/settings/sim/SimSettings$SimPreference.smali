.class Lcom/android/settings/sim/SimSettings$SimPreference;
.super Landroidx/preference/Preference;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimPreference"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mSlotId:I

.field private mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    .line 289
    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 291
    iput-object p2, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    .line 292
    iput-object p3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 293
    iput p4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sim"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/sim/SimSettings$SimPreference;)I
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->getSlotId()I

    move-result p0

    return p0
.end method

.method private getSlotId()I
    .locals 0

    .line 320
    iget p0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    return p0
.end method


# virtual methods
.method public update()V
    .locals 6

    .line 299
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120dc5

    .line 302
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 301
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_1

    .line 304
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3, v1}, Lcom/android/settings/sim/SimSettings;->access$400(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 307
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 308
    invoke-static {v3, v4}, Lcom/android/settings/sim/SimSettings;->access$400(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 309
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 311
    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$SimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    const v0, 0x7f120dec

    .line 313
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 v0, 0x0

    .line 314
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void
.end method
