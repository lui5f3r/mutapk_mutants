.class Lorg/wikipedia/views/CustomDatePicker_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "CustomDatePicker_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/CustomDatePicker_ViewBinding;-><init>(Lorg/wikipedia/views/CustomDatePicker;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/views/CustomDatePicker_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/views/CustomDatePicker;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/CustomDatePicker_ViewBinding;Lorg/wikipedia/views/CustomDatePicker;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lorg/wikipedia/views/CustomDatePicker_ViewBinding$1;->this$0:Lorg/wikipedia/views/CustomDatePicker_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/views/CustomDatePicker_ViewBinding$1;->val$target:Lorg/wikipedia/views/CustomDatePicker;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 38
    iget-object p1, p0, Lorg/wikipedia/views/CustomDatePicker_ViewBinding$1;->val$target:Lorg/wikipedia/views/CustomDatePicker;

    invoke-virtual {p1}, Lorg/wikipedia/views/CustomDatePicker;->onPreviousMonthClicked()V

    return-void
.end method
