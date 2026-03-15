.class public Lcom/android/settings/homepage/contextualcards/ContextualCard;
.super Ljava/lang/Object;
.source "ContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    }
.end annotation


# instance fields
.field private final mAppVersion:J

.field private final mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

.field private final mCardAction:I

.field private final mCardType:I

.field private final mCategory:I

.field private final mExpireTimeMS:J

.field private final mHasInlineAction:Z

.field private final mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mIconResName:Ljava/lang/String;

.field private final mIsLargeCard:Z

.field private final mIsPendingDismiss:Z

.field private final mLocalizedToLocale:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mRankingScore:D

.field private final mSliceUri:Ljava/lang/String;

.field private final mSummaryResName:Ljava/lang/String;

.field private final mSummaryText:Ljava/lang/String;

.field private final mTitleResName:Ljava/lang/String;

.field private final mTitleText:Ljava/lang/String;

.field private final mViewType:I


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "name"

    .line 200
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "type"

    .line 202
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardType:I

    .line 203
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardType:I

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setCardType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "score"

    .line 204
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mRankingScore:D

    .line 205
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-wide v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mRankingScore:D

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setRankingScore(D)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "slice_uri"

    .line 206
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setSliceUri(Landroid/net/Uri;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "category"

    .line 208
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCategory:I

    .line 209
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCategory:I

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setCategory(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "localized_to_locale"

    .line 211
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 210
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mLocalizedToLocale:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mLocalizedToLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setLocalizedToLocale(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "package_name"

    .line 213
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mPackageName:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "app_version"

    .line 215
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mAppVersion:J

    .line 216
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-wide v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mAppVersion:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setAppVersion(J)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "title_res_name"

    .line 218
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 217
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleResName:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setTitleResName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "title_text"

    .line 220
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleText:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setTitleText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "summary_res_name"

    .line 223
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 222
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryResName:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setSummaryResName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "summary_text"

    .line 225
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryText:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setSummaryText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "icon_res_name"

    .line 227
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconResName:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIconResName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "icon_res_id"

    .line 229
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconResId:I

    .line 230
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconResId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIconResId(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "card_action"

    .line 231
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardAction:I

    .line 232
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardAction:I

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setCardAction(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "expire_time_ms"

    .line 233
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mExpireTimeMS:J

    .line 234
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mExpireTimeMS:J

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setExpireTimeMS(J)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const/4 p1, 0x0

    .line 235
    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsLargeCard:Z

    .line 236
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-boolean v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsLargeCard:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIsLargeCard(Z)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 238
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 239
    iget v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardType:I

    invoke-direct {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getViewTypeByCardType(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mViewType:I

    .line 240
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mViewType:I

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 241
    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsPendingDismiss:Z

    .line 242
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-boolean v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsPendingDismiss:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIsPendingDismiss(Z)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 243
    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mHasInlineAction:Z

    .line 244
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-boolean p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mHasInlineAction:Z

    invoke-virtual {p1, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setHasInlineAction(Z)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)V
    .locals 2

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 175
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$000(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    .line 176
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$100(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardType:I

    .line 177
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$200(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mRankingScore:D

    .line 178
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$300(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    .line 179
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$400(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCategory:I

    .line 180
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$500(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mLocalizedToLocale:Ljava/lang/String;

    .line 181
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$600(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mPackageName:Ljava/lang/String;

    .line 182
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$700(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mAppVersion:J

    .line 183
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$800(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleResName:Ljava/lang/String;

    .line 184
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$900(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleText:Ljava/lang/String;

    .line 185
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1000(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryResName:Ljava/lang/String;

    .line 186
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1100(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryText:Ljava/lang/String;

    .line 187
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1200(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconResName:Ljava/lang/String;

    .line 188
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1300(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconResId:I

    .line 189
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1400(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardAction:I

    .line 190
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1500(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mExpireTimeMS:J

    .line 191
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1600(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1700(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsLargeCard:Z

    .line 193
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1800(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mViewType:I

    .line 194
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1900(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsPendingDismiss:Z

    .line 195
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$2000(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mHasInlineAction:Z

    return-void
.end method

.method private getViewTypeByCardType(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const p0, 0x7f0d006c

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 260
    :cond_0
    instance-of v0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 263
    :cond_1
    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    .line 265
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public getCardType()I
    .locals 0

    .line 82
    iget p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardType:I

    return p0
.end method

.method public getCategory()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCategory:I

    return p0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getRankingScore()D
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mRankingScore:D

    return-wide v0
.end method

.method public getSliceUri()Landroid/net/Uri;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getSummaryText()Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryText:Ljava/lang/String;

    return-object p0
.end method

.method public getTextSliceUri()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleText:Ljava/lang/String;

    return-object p0
.end method

.method public getViewType()I
    .locals 0

    .line 158
    iget p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mViewType:I

    return p0
.end method

.method public hasInlineAction()Z
    .locals 0

    .line 166
    iget-boolean p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mHasInlineAction:Z

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method isCustomCard()Z
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isLargeCard()Z
    .locals 0

    .line 150
    iget-boolean p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsLargeCard:Z

    return p0
.end method

.method public isPendingDismiss()Z
    .locals 0

    .line 162
    iget-boolean p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsPendingDismiss:Z

    return p0
.end method

.method public mutate()Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    return-object p0
.end method
