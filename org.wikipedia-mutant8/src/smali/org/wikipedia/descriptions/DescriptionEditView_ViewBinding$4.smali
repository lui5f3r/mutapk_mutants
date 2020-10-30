.class Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$4;
.super Ljava/lang/Object;
.source "DescriptionEditView_ViewBinding.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 83
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$4;->this$0:Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$4;->val$target:Lorg/wikipedia/descriptions/DescriptionEditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 86
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$4;->val$target:Lorg/wikipedia/descriptions/DescriptionEditView;

    invoke-virtual {p1, p2}, Lorg/wikipedia/descriptions/DescriptionEditView;->descriptionTextEditorAction(I)Z

    move-result p1

    return p1
.end method
