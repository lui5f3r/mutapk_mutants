.class public Lorg/wikipedia/views/CustomDatePicker_ViewBinding;
.super Ljava/lang/Object;
.source "CustomDatePicker_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/views/CustomDatePicker;

.field private view7f090288:Landroid/view/View;

.field private view7f0902f8:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/views/CustomDatePicker;Landroid/view/View;)V
    .locals 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/wikipedia/views/CustomDatePicker_ViewBinding;->target:Lorg/wikipedia/views/CustomDatePicker;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900ea

    const-string v2, "field \'day\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/views/CustomDatePicker;->day:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090264

    const-string v2, "field \'monthString\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/views/CustomDatePicker;->monthString:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09019c

    const-string v2, "field \'monthGrid\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lorg/wikipedia/views/CustomDatePicker;->monthGrid:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0902f8

    const-string v1, "field \'previousMonthBtn\' and method \'onPreviousMonthClicked\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 33
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'previousMonthBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/views/CustomDatePicker;->previousMonthBtn:Landroid/widget/ImageView;

    .line 34
    iput-object v1, p0, Lorg/wikipedia/views/CustomDatePicker_ViewBinding;->view7f0902f8:Landroid/view/View;

    .line 35
    new-instance v0, Lorg/wikipedia/views/CustomDatePicker_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/views/CustomDatePicker_ViewBinding$1;-><init>(Lorg/wikipedia/views/CustomDatePicker_ViewBinding;Lorg/wikipedia/views/CustomDatePicker;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090288

    const-string v1, "field \'nextMonthBtn\' and method \'onNextMonthClicked\'"

    .line 41
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 42
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'nextMonthBtn\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/views/CustomDatePicker;->nextMonthBtn:Landroid/widget/ImageView;

    .line 43
    iput-object p2, p0, Lorg/wikipedia/views/CustomDatePicker_ViewBinding;->view7f090288:Landroid/view/View;

    .line 44
    new-instance v0, Lorg/wikipedia/views/CustomDatePicker_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/views/CustomDatePicker_ViewBinding$2;-><init>(Lorg/wikipedia/views/CustomDatePicker_ViewBinding;Lorg/wikipedia/views/CustomDatePicker;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker_ViewBinding;->target:Lorg/wikipedia/views/CustomDatePicker;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 57
    iput-object v1, p0, Lorg/wikipedia/views/CustomDatePicker_ViewBinding;->target:Lorg/wikipedia/views/CustomDatePicker;

    .line 59
    iput-object v1, v0, Lorg/wikipedia/views/CustomDatePicker;->day:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lorg/wikipedia/views/CustomDatePicker;->monthString:Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lorg/wikipedia/views/CustomDatePicker;->monthGrid:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    iput-object v1, v0, Lorg/wikipedia/views/CustomDatePicker;->previousMonthBtn:Landroid/widget/ImageView;

    .line 63
    iput-object v1, v0, Lorg/wikipedia/views/CustomDatePicker;->nextMonthBtn:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker_ViewBinding;->view7f0902f8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iput-object v1, p0, Lorg/wikipedia/views/CustomDatePicker_ViewBinding;->view7f0902f8:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker_ViewBinding;->view7f090288:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iput-object v1, p0, Lorg/wikipedia/views/CustomDatePicker_ViewBinding;->view7f090288:Landroid/view/View;

    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
