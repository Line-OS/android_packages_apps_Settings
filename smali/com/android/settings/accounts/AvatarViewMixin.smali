.class public Lcom/android/settings/accounts/AvatarViewMixin;
.super Ljava/lang/Object;
.source "AvatarViewMixin.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field static final INTENT_GET_ACCOUNT_DATA:Landroid/content/Intent;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mAvatarImage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvatarView:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.action.SETTINGS_ACCOUNT_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/accounts/AvatarViewMixin;->INTENT_GET_ACCOUNT_DATA:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroid/widget/ImageView;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mContext:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mActivityManager:Landroid/app/ActivityManager;

    .line 75
    iput-object p2, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mAvatarView:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mAvatarView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$hwZJKSXJt17gb8T2AMlWnbSUjs0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$hwZJKSXJt17gb8T2AMlWnbSUjs0;-><init>(Lcom/android/settings/accounts/AvatarViewMixin;Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mAvatarImage:Landroidx/lifecycle/MutableLiveData;

    .line 112
    iget-object p0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mAvatarImage:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$mB5LS5stVtWy9PDGPAEsAQHcm4c;

    invoke-direct {v0, p2}, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$mB5LS5stVtWy9PDGPAEsAQHcm4c;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private loadAccount()V
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/accounts/AvatarViewMixin;->queryProviderAuthority()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance v1, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$_8nBC_LnKcD01-q7LexZiPdLLSY;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$_8nBC_LnKcD01-q7LexZiPdLLSY;-><init>(Lcom/android/settings/accounts/AvatarViewMixin;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method hasAccount()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getAccountFeatureProvider()Lcom/android/settings/accounts/AccountFeatureProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/android/settings/accounts/AccountFeatureProvider;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 138
    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$loadAccount$2$AvatarViewMixin(Ljava/lang/String;)V
    .locals 3

    .line 148
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 151
    iget-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "getAccountAvatar"

    invoke-virtual {v0, p1, v2, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "account_avatar"

    .line 153
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const-string v1, "account_name"

    const-string v2, ""

    .line 154
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mAccountName:Ljava/lang/String;

    .line 155
    iget-object p0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mAvatarImage:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$new$0$AvatarViewMixin(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroid/view/View;)V
    .locals 7

    const-string p2, "AvatarViewMixin"

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12044a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 81
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    iget-object v1, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mAccountName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mAccountName:Ljava/lang/String;

    const-string v2, "extra.accountName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x100000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 94
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "Cannot find any matching action VIEW_ACCOUNT intent."

    .line 95
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_1
    iget-object p0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x66b

    const/16 v4, 0x5de

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    .line 101
    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 108
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error parsing avatar mixin intent, skipping"

    .line 83
    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string v1, "AvatarViewMixin"

    if-nez v0, :cond_0

    const-string p0, "Feature disabled by config. Skipping"

    .line 120
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Feature disabled on low ram device. Skipping"

    .line 124
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AvatarViewMixin;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-direct {p0}, Lcom/android/settings/accounts/AvatarViewMixin;->loadAccount()V

    goto :goto_0

    .line 130
    :cond_2
    iget-object p0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mAvatarView:Landroid/widget/ImageView;

    const v0, 0x7f0800e5

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method queryProviderAuthority()Ljava/lang/String;
    .locals 2

    .line 161
    iget-object p0, p0, Lcom/android/settings/accounts/AvatarViewMixin;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v0, Lcom/android/settings/accounts/AvatarViewMixin;->INTENT_GET_ACCOUNT_DATA:Landroid/content/Intent;

    const/high16 v1, 0x100000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 164
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 165
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    return-object p0

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The size of the provider is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AvatarViewMixin"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
