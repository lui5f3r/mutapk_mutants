.class public Lorg/wikipedia/theme/ThemeFittingRoomFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ThemeFittingRoomFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/theme/ThemeFittingRoomFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/theme/ThemeFittingRoomFragment;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/wikipedia/theme/ThemeFittingRoomFragment_ViewBinding;->target:Lorg/wikipedia/theme/ThemeFittingRoomFragment;

    .line 22
    const-class v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    const v1, 0x7f090405

    const-string v2, "field \'testImage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    iput-object v0, p1, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->testImage:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090407

    const-string v2, "field \'testTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->testTitle:Landroid/widget/TextView;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090406

    const-string v2, "field \'testText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->testText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 30
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeFittingRoomFragment_ViewBinding;->target:Lorg/wikipedia/theme/ThemeFittingRoomFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lorg/wikipedia/theme/ThemeFittingRoomFragment_ViewBinding;->target:Lorg/wikipedia/theme/ThemeFittingRoomFragment;

    .line 34
    iput-object v1, v0, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->testImage:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 35
    iput-object v1, v0, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->testTitle:Landroid/widget/TextView;

    .line 36
    iput-object v1, v0, Lorg/wikipedia/theme/ThemeFittingRoomFragment;->testText:Landroid/widget/TextView;

    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
