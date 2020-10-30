.class Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DescriptionEditView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;-><init>(Lorg/wikipedia/descriptions/DescriptionEditView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/descriptions/DescriptionEditView;


# direct methods
.method constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;Lorg/wikipedia/descriptions/DescriptionEditView;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$2;->this$0:Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$2;->val$target:Lorg/wikipedia/descriptions/DescriptionEditView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$2;->val$target:Lorg/wikipedia/descriptions/DescriptionEditView;

    invoke-virtual {p1}, Lorg/wikipedia/descriptions/DescriptionEditView;->onCancelClick()V

    return-void
.end method
