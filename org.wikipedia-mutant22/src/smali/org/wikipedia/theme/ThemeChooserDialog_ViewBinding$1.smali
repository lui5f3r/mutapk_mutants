.class Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding$1;
.super Ljava/lang/Object;
.source "ThemeChooserDialog_ViewBinding.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/theme/ThemeChooserDialog;


# direct methods
.method constructor <init>(Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding;Lorg/wikipedia/theme/ThemeChooserDialog;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding$1;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding$1;->val$target:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 48
    iget-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding$1;->val$target:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-virtual {p1, p2}, Lorg/wikipedia/theme/ThemeChooserDialog;->onToggleDimImages(Z)V

    return-void
.end method
