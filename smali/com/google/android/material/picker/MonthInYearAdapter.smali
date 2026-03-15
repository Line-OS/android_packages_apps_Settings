.class public Lcom/google/android/material/picker/MonthInYearAdapter;
.super Landroid/widget/BaseAdapter;
.source "MonthInYearAdapter.java"


# static fields
.field private static final MAXIMUM_WEEKS:I


# instance fields
.field private final monthInYear:Lcom/google/android/material/picker/MonthInYear;

.field private final textViewSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lcom/google/android/material/picker/MonthInYearAdapter;->MAXIMUM_WEEKS:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/picker/MonthInYear;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    .line 48
    invoke-static {p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveMinimumAccessibleTouchTarget(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->textViewSize:I

    return-void
.end method


# virtual methods
.method public firstPositionInMonth()I
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthInYear;->daysFromStartOfWeekToFirstOfMonth()I

    move-result p0

    return p0
.end method

.method public getCount()I
    .locals 1

    .line 82
    iget-object p0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    iget p0, p0, Lcom/google/android/material/picker/MonthInYear;->daysInWeek:I

    sget v0, Lcom/google/android/material/picker/MonthInYearAdapter;->MAXIMUM_WEEKS:I

    mul-int/2addr p0, v0

    return p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MonthInYearAdapter;->getItem(I)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public getItem(I)Ljava/util/Calendar;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MonthInYear;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthInYearAdapter;->lastPositionInMonth()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MonthInYearAdapter;->positionToDay(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/picker/MonthInYear;->getDay(I)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    iget p0, p0, Lcom/google/android/material/picker/MonthInYear;->daysInWeek:I

    div-int/2addr p1, p0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 87
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    if-nez p2, :cond_0

    .line 89
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 90
    iget p2, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->textViewSize:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setHeight(I)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthInYearAdapter;->firstPositionInMonth()I

    move-result p2

    sub-int/2addr p1, p2

    if-ltz p1, :cond_2

    .line 93
    iget-object p0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    iget p0, p0, Lcom/google/android/material/picker/MonthInYear;->daysInMonth:I

    if-lt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 96
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 97
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x4

    .line 94
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-object v0
.end method

.method public lastPositionInMonth()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {v0}, Lcom/google/android/material/picker/MonthInYear;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    iget p0, p0, Lcom/google/android/material/picker/MonthInYear;->daysInMonth:I

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public positionToDay(I)I
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/google/android/material/picker/MonthInYearAdapter;->monthInYear:Lcom/google/android/material/picker/MonthInYear;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthInYear;->daysFromStartOfWeekToFirstOfMonth()I

    move-result p0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public withinMonth(I)Z
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthInYearAdapter;->firstPositionInMonth()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/picker/MonthInYearAdapter;->lastPositionInMonth()I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
