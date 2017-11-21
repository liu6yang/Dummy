// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge

Shader "ly/mj_new" {
    Properties {
        _Maintex ("Maintex", 2D) = "white" {}
		_Lighttex("Lighttex", 2D) = "white" {}
        _maintex_qd ("maintex_qd", Range(0, 3)) = 2.362793
        _specularRange ("specularRange", Range(0, 10)) = 2.00464
        _specular_qd ("specular_qd", Range(0, 10)) = 1.324097
        _node_5946 ("node_5946", Color) = (0.5661765,0.5661765,0.5661765,1)
        _node_7522 ("node_7522", Float ) = 2
        _gao_guang ("gao_guang", Float ) = 0
        _gao_guang_dian ("gao_guang_dian", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Maintex;
			uniform sampler2D _Lighttex;
			uniform float4 _Maintex_ST;
            uniform float _maintex_qd;
            uniform float _specularRange;
            uniform float _specular_qd;
            uniform float4 _node_5946;
            uniform float _node_7522;
            uniform float _gao_guang;
            uniform float _gao_guang_dian;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _gao_guang;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_gao_guang_dian,_gao_guang_dian,_gao_guang_dian);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
				
                float3 specular = directSpecular;
////// Emissive:
                float4 _Maintex_var = tex2D(_Maintex,TRANSFORM_TEX(i.uv0, _Maintex));
				float4 _Lighttex_var = tex2D(_Lighttex, i.uv0);
                float node_4344 = 0.5;
				float node_6236;

				if (_Lighttex_var.r > 0)
				{
					node_6236 = (node_4344*(node_4344 + 0.5*dot(i.normalDir, lightDirection) + 0.5));
				}
				else
				{
					node_6236 = 0.75;
				}
                float3 MainTexc = _Maintex_var.rgb;
                float3 emissive = (((_Maintex_var.rgb*(node_6236*node_6236))*_maintex_qd)+((pow(max(0,dot(i.normalDir,halfDirection)),exp2(_specularRange))*_specular_qd)*saturate((dot(MainTexc,float3(0.3,0.59,0.11))*1.666667+-1.5))*_node_5946.rgb*_node_7522));
/// Final Color:
                float3 finalColor = specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
       
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
