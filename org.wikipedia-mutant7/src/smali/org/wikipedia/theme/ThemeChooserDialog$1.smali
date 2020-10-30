.class Lorg/wikipedia/theme/ThemeChooserDialog$1;
.super Ljava/lang/Object;
.source "ThemeChooserDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/theme/ThemeChooserDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/theme/ThemeChooserDialog;


# direct methods
.method constructor <init>(Lorg/wikipedia/theme/ThemeChooserDialog;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog$1;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTextSizeMultiplier()I

    move-result p1

    .line 91
    iget-object p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog$1;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-static {p2}, Lorg/wikipedia/theme/ThemeChooserDialog;->access$200(Lorg/wikipedia/theme/ThemeChooserDialog;)Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    iget-object p3, p0, Lorg/wikipedia/theme/ThemeChooserDialog$1;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    iget-object p3, p3, Lorg/wikipedia/theme/ThemeChooserDialog;->textSizeSeekBar:Lorg/wikipedia/views/DiscreteSeekBar;

    invoke-virtual {p3}, Lorg/wikipedia/views/DiscreteSeekBar;->getValue()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/wikipedia/WikipediaApp;->setFontSizeMultiplier(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 93
    iget-object p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog$1;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lorg/wikipedia/theme/ThemeChooserDialog;->access$302(Lorg/wikipedia/theme/ThemeChooserDialog;Z)Z

    .line 94
    iget-object p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog$1;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-static {p2}, Lorg/wikipedia/theme/ThemeChooserDialog;->access$400(Lorg/wikipedia/theme/ThemeChooserDialog;)V

    .line 95
    iget-object p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog$1;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-static {p2}, Lorg/wikipedia/theme/ThemeChooserDialog;->access$500(Lorg/wikipedia/theme/ThemeChooserDialog;)Lorg/wikipedia/analytics/AppearanceChangeFunnel;

    move-result-object p2

    int-to-float p1, p1

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTextSizeMultiplier()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p1, p3}, Lorg/wikipedia/analytics/AppearanceChangeFunnel;->logFontSizeChange(FF)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
