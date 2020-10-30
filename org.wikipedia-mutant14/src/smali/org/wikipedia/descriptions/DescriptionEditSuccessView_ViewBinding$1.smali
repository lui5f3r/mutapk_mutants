.class Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DescriptionEditSuccessView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding;-><init>(Lorg/wikipedia/descriptions/DescriptionEditSuccessView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/descriptions/DescriptionEditSuccessView;


# direct methods
.method constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding;Lorg/wikipedia/descriptions/DescriptionEditSuccessView;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding$1;->val$target:Lorg/wikipedia/descriptions/DescriptionEditSuccessView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 37
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView_ViewBinding$1;->val$target:Lorg/wikipedia/descriptions/DescriptionEditSuccessView;

    invoke-virtual {p1}, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;->onDismissClick()V

    return-void
.end method
