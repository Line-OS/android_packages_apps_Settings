.class Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimPreferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimPreferenceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectColorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResId:I

.field final synthetic this$0:Lcom/android/settings/sim/SimPreferenceDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    .line 199
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 200
    iput-object p2, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mContext:Landroid/content/Context;

    .line 201
    iput p3, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mResId:I

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 242
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 243
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;

    .line 245
    iget-object p0, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {p0}, Lcom/android/settings/sim/SimPreferenceDialog;->access$000(Lcom/android/settings/sim/SimPreferenceDialog;)I

    move-result p0

    if-ne p0, p1, :cond_0

    .line 246
    iget-object p0, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    sget-object p1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object p0, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 250
    :goto_0
    iget-object p0, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 206
    iget-object p3, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 207
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 211
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009f

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0700a0

    .line 213
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-nez p2, :cond_0

    .line 217
    iget p2, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mResId:I

    const/4 v2, 0x0

    invoke-virtual {p3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 218
    new-instance p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;

    invoke-direct {p3, p0, v2}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;-><init>(Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;Lcom/android/settings/sim/SimPreferenceDialog$1;)V

    .line 219
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 220
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 221
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 222
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v0, 0x7f0a010b

    .line 223
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->label:Landroid/widget/TextView;

    const v0, 0x7f0a0106

    .line 224
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 225
    iput-object v2, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    .line 226
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;

    .line 232
    :goto_0
    iget-object v0, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {p0}, Lcom/android/settings/sim/SimPreferenceDialog;->access$300(Lcom/android/settings/sim/SimPreferenceDialog;)[I

    move-result-object p0

    aget p0, p0, p1

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget-object p0, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    sget-object p1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 235
    iget-object p0, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object p0, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object p1, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
